
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int mdfd_segno; } ;
struct TYPE_13__ {size_t* md_num_open_segs; TYPE_2__** md_seg_fds; } ;
typedef TYPE_1__* SMgrRelation ;
typedef TYPE_2__ MdfdVec ;
typedef size_t ForkNumber ;
typedef size_t BlockNumber ;


 int Assert (int) ;
 int BLCKSZ ;
 int ENOENT ;
 int ERROR ;
 int EXTENSION_CREATE ;
 int EXTENSION_CREATE_RECOVERY ;
 int EXTENSION_DONT_CHECK_SIZE ;
 int EXTENSION_FAIL ;
 int EXTENSION_RETURN_NULL ;
 int FATAL ;
 scalar_t__ FILE_POSSIBLY_DELETED (int ) ;
 scalar_t__ InRecovery ;
 int O_CREAT ;
 scalar_t__ RELSEG_SIZE ;
 TYPE_2__* _mdfd_openseg (TYPE_1__*,size_t,size_t,int) ;
 int _mdfd_segpath (TYPE_1__*,size_t,size_t) ;
 size_t _mdnblocks (TYPE_1__*,size_t,TYPE_2__*) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,int ,size_t,...) ;
 int errno ;
 int mdextend (TYPE_1__*,size_t,size_t,char*,int) ;
 TYPE_2__* mdopenfork (TYPE_1__*,size_t,int) ;
 char* palloc0 (int ) ;
 int pfree (char*) ;

__attribute__((used)) static MdfdVec *
_mdfd_getseg(SMgrRelation reln, ForkNumber forknum, BlockNumber blkno,
    bool skipFsync, int behavior)
{
 MdfdVec *v;
 BlockNumber targetseg;
 BlockNumber nextsegno;


 Assert(behavior &
     (EXTENSION_FAIL | EXTENSION_CREATE | EXTENSION_RETURN_NULL));

 targetseg = blkno / ((BlockNumber) RELSEG_SIZE);


 if (targetseg < reln->md_num_open_segs[forknum])
 {
  v = &reln->md_seg_fds[forknum][targetseg];
  return v;
 }
 if (reln->md_num_open_segs[forknum] > 0)
  v = &reln->md_seg_fds[forknum][reln->md_num_open_segs[forknum] - 1];
 else
 {
  v = mdopenfork(reln, forknum, behavior);
  if (!v)
   return ((void*)0);
 }

 for (nextsegno = reln->md_num_open_segs[forknum];
   nextsegno <= targetseg; nextsegno++)
 {
  BlockNumber nblocks = _mdnblocks(reln, forknum, v);
  int flags = 0;

  Assert(nextsegno == v->mdfd_segno + 1);

  if (nblocks > ((BlockNumber) RELSEG_SIZE))
   elog(FATAL, "segment too big");

  if ((behavior & EXTENSION_CREATE) ||
   (InRecovery && (behavior & EXTENSION_CREATE_RECOVERY)))
  {
   if (nblocks < ((BlockNumber) RELSEG_SIZE))
   {
    char *zerobuf = palloc0(BLCKSZ);

    mdextend(reln, forknum,
       nextsegno * ((BlockNumber) RELSEG_SIZE) - 1,
       zerobuf, skipFsync);
    pfree(zerobuf);
   }
   flags = O_CREAT;
  }
  else if (!(behavior & EXTENSION_DONT_CHECK_SIZE) &&
     nblocks < ((BlockNumber) RELSEG_SIZE))
  {






   if (behavior & EXTENSION_RETURN_NULL)
   {






    errno = ENOENT;
    return ((void*)0);
   }

   ereport(ERROR,
     (errcode_for_file_access(),
      errmsg("could not open file \"%s\" (target block %u): previous segment is only %u blocks",
       _mdfd_segpath(reln, forknum, nextsegno),
       blkno, nblocks)));
  }

  v = _mdfd_openseg(reln, forknum, nextsegno, flags);

  if (v == ((void*)0))
  {
   if ((behavior & EXTENSION_RETURN_NULL) &&
    FILE_POSSIBLY_DELETED(errno))
    return ((void*)0);
   ereport(ERROR,
     (errcode_for_file_access(),
      errmsg("could not open file \"%s\" (target block %u): %m",
       _mdfd_segpath(reln, forknum, nextsegno),
       blkno)));
  }
 }

 return v;
}

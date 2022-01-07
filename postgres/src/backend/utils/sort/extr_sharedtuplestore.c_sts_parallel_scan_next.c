
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ read_ntuples; scalar_t__ read_ntuples_available; size_t read_participant; scalar_t__ read_next_page; int participant; TYPE_1__* sts; int * read_file; scalar_t__ read_bytes; int fileset; } ;
struct TYPE_11__ {int overflow; scalar_t__ ntuples; } ;
struct TYPE_10__ {scalar_t__ read_page; scalar_t__ npages; int lock; } ;
struct TYPE_9__ {int nparticipants; TYPE_2__* participants; } ;
typedef TYPE_2__ SharedTuplestoreParticipant ;
typedef TYPE_3__ SharedTuplestoreChunk ;
typedef TYPE_4__ SharedTuplestoreAccessor ;
typedef int * MinimalTuple ;
typedef scalar_t__ BlockNumber ;


 int BufFileClose (int *) ;
 int * BufFileOpenShared (int ,char*) ;
 scalar_t__ BufFileRead (int *,TYPE_3__*,scalar_t__) ;
 scalar_t__ BufFileSeekBlock (int *,scalar_t__) ;
 int ERROR ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_EXCLUSIVE ;
 int MAXPGPATH ;
 scalar_t__ STS_CHUNK_HEADER_SIZE ;
 int STS_CHUNK_PAGES ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errdetail_internal (char*) ;
 int errmsg (char*) ;
 int sts_filename (char*,TYPE_4__*,size_t) ;
 int * sts_read_tuple (TYPE_4__*,void*) ;

MinimalTuple
sts_parallel_scan_next(SharedTuplestoreAccessor *accessor, void *meta_data)
{
 SharedTuplestoreParticipant *p;
 BlockNumber read_page;
 bool eof;

 for (;;)
 {

  if (accessor->read_ntuples < accessor->read_ntuples_available)
   return sts_read_tuple(accessor, meta_data);


  p = &accessor->sts->participants[accessor->read_participant];

  LWLockAcquire(&p->lock, LW_EXCLUSIVE);

  if (p->read_page < accessor->read_next_page)
   p->read_page = accessor->read_next_page;
  eof = p->read_page >= p->npages;
  if (!eof)
  {

   read_page = p->read_page;

   p->read_page += STS_CHUNK_PAGES;
   accessor->read_next_page = p->read_page;
  }
  LWLockRelease(&p->lock);

  if (!eof)
  {
   SharedTuplestoreChunk chunk_header;


   if (accessor->read_file == ((void*)0))
   {
    char name[MAXPGPATH];

    sts_filename(name, accessor, accessor->read_participant);
    accessor->read_file =
     BufFileOpenShared(accessor->fileset, name);
   }


   if (BufFileSeekBlock(accessor->read_file, read_page) != 0)
    ereport(ERROR,
      (errcode_for_file_access(),
       errmsg("could not read from shared tuplestore temporary file"),
       errdetail_internal("Could not seek to next block.")));
   if (BufFileRead(accessor->read_file, &chunk_header,
       STS_CHUNK_HEADER_SIZE) != STS_CHUNK_HEADER_SIZE)
    ereport(ERROR,
      (errcode_for_file_access(),
       errmsg("could not read from shared tuplestore temporary file"),
       errdetail_internal("Short read while reading chunk header.")));





   if (chunk_header.overflow > 0)
   {
    accessor->read_next_page = read_page +
     chunk_header.overflow * STS_CHUNK_PAGES;
    continue;
   }

   accessor->read_ntuples = 0;
   accessor->read_ntuples_available = chunk_header.ntuples;
   accessor->read_bytes = STS_CHUNK_HEADER_SIZE;


  }
  else
  {
   if (accessor->read_file != ((void*)0))
   {
    BufFileClose(accessor->read_file);
    accessor->read_file = ((void*)0);
   }





   accessor->read_participant = (accessor->read_participant + 1) %
    accessor->sts->nparticipants;
   if (accessor->read_participant == accessor->participant)
    break;
   accessor->read_next_page = 0;


  }
 }

 return ((void*)0);
}

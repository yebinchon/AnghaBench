
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16 ;
struct TYPE_2__ {scalar_t__ pd_checksum; int pd_flags; scalar_t__ pd_lower; scalar_t__ pd_upper; scalar_t__ pd_special; } ;
typedef TYPE_1__* PageHeader ;
typedef scalar_t__ Page ;
typedef int BlockNumber ;


 int BLCKSZ ;
 scalar_t__ DataChecksumsEnabled () ;
 int ERRCODE_DATA_CORRUPTED ;
 scalar_t__ MAXALIGN (scalar_t__) ;
 int PD_VALID_FLAG_BITS ;
 int PageIsNew (scalar_t__) ;
 int StaticAssertStmt (int,char*) ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errmsg (char*,scalar_t__,scalar_t__) ;
 scalar_t__ ignore_checksum_failure ;
 scalar_t__ pg_checksum_page (char*,int ) ;
 int pgstat_report_checksum_failure () ;

bool
PageIsVerified(Page page, BlockNumber blkno)
{
 PageHeader p = (PageHeader) page;
 size_t *pagebytes;
 int i;
 bool checksum_failure = 0;
 bool header_sane = 0;
 bool all_zeroes = 0;
 uint16 checksum = 0;




 if (!PageIsNew(page))
 {
  if (DataChecksumsEnabled())
  {
   checksum = pg_checksum_page((char *) page, blkno);

   if (checksum != p->pd_checksum)
    checksum_failure = 1;
  }







  if ((p->pd_flags & ~PD_VALID_FLAG_BITS) == 0 &&
   p->pd_lower <= p->pd_upper &&
   p->pd_upper <= p->pd_special &&
   p->pd_special <= BLCKSZ &&
   p->pd_special == MAXALIGN(p->pd_special))
   header_sane = 1;

  if (header_sane && !checksum_failure)
   return 1;
 }






 StaticAssertStmt(BLCKSZ == (BLCKSZ / sizeof(size_t)) * sizeof(size_t),
      "BLCKSZ has to be a multiple of sizeof(size_t)");

 all_zeroes = 1;
 pagebytes = (size_t *) page;
 for (i = 0; i < (BLCKSZ / sizeof(size_t)); i++)
 {
  if (pagebytes[i] != 0)
  {
   all_zeroes = 0;
   break;
  }
 }

 if (all_zeroes)
  return 1;





 if (checksum_failure)
 {
  ereport(WARNING,
    (ERRCODE_DATA_CORRUPTED,
     errmsg("page verification failed, calculated checksum %u but expected %u",
      checksum, p->pd_checksum)));

  pgstat_report_checksum_failure();

  if (header_sane && ignore_checksum_failure)
   return 1;
 }

 return 0;
}

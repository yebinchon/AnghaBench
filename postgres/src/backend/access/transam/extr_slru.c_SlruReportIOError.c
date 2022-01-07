
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TransactionId ;
typedef int SlruCtl ;


 int BLCKSZ ;
 int ERROR ;
 int MAXPGPATH ;



 int SLRU_PAGES_PER_SEGMENT ;



 int SlruFileName (int ,char*,int) ;
 int data_sync_elevel (int ) ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errdetail (char*,char*,...) ;
 int errmsg (char*,int ) ;
 int errno ;
 int slru_errcause ;
 int slru_errno ;

__attribute__((used)) static void
SlruReportIOError(SlruCtl ctl, int pageno, TransactionId xid)
{
 int segno = pageno / SLRU_PAGES_PER_SEGMENT;
 int rpageno = pageno % SLRU_PAGES_PER_SEGMENT;
 int offset = rpageno * BLCKSZ;
 char path[MAXPGPATH];

 SlruFileName(ctl, path, segno);
 errno = slru_errno;
 switch (slru_errcause)
 {
  case 131:
   ereport(ERROR,
     (errcode_for_file_access(),
      errmsg("could not access status of transaction %u", xid),
      errdetail("Could not open file \"%s\": %m.", path)));
   break;
  case 129:
   ereport(ERROR,
     (errcode_for_file_access(),
      errmsg("could not access status of transaction %u", xid),
      errdetail("Could not seek in file \"%s\" to offset %u: %m.",
          path, offset)));
   break;
  case 130:
   if (errno)
    ereport(ERROR,
      (errcode_for_file_access(),
       errmsg("could not access status of transaction %u", xid),
       errdetail("Could not read from file \"%s\" at offset %u: %m.",
           path, offset)));
   else
    ereport(ERROR,
      (errmsg("could not access status of transaction %u", xid),
       errdetail("Could not read from file \"%s\" at offset %u: read too few bytes.", path, offset)));
   break;
  case 128:
   if (errno)
    ereport(ERROR,
      (errcode_for_file_access(),
       errmsg("could not access status of transaction %u", xid),
       errdetail("Could not write to file \"%s\" at offset %u: %m.",
           path, offset)));
   else
    ereport(ERROR,
      (errmsg("could not access status of transaction %u", xid),
       errdetail("Could not write to file \"%s\" at offset %u: wrote too few bytes.",
           path, offset)));
   break;
  case 132:
   ereport(data_sync_elevel(ERROR),
     (errcode_for_file_access(),
      errmsg("could not access status of transaction %u", xid),
      errdetail("Could not fsync file \"%s\": %m.",
          path)));
   break;
  case 133:
   ereport(ERROR,
     (errcode_for_file_access(),
      errmsg("could not access status of transaction %u", xid),
      errdetail("Could not close file \"%s\": %m.",
          path)));
   break;
  default:

   elog(ERROR, "unrecognized SimpleLru error cause: %d",
     (int) slru_errcause);
   break;
 }
}

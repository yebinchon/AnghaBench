
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TimeLineID ;


 int ERRCODE_PROTOCOL_VIOLATION ;
 int ERROR ;
 int LOG ;
 int MAXFNAMELEN ;
 int TLHistoryFileName (char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int) ;
 int errmsg_internal (char*,int) ;
 int existsTimeLineHistory (int) ;
 int pfree (char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int walrcv_readtimelinehistoryfile (int ,int,char**,char**,int*) ;
 int wrconn ;
 int writeTimeLineHistoryFile (int,char*,int) ;

__attribute__((used)) static void
WalRcvFetchTimeLineHistoryFiles(TimeLineID first, TimeLineID last)
{
 TimeLineID tli;

 for (tli = first; tli <= last; tli++)
 {

  if (tli != 1 && !existsTimeLineHistory(tli))
  {
   char *fname;
   char *content;
   int len;
   char expectedfname[MAXFNAMELEN];

   ereport(LOG,
     (errmsg("fetching timeline history file for timeline %u from primary server",
       tli)));

   walrcv_readtimelinehistoryfile(wrconn, tli, &fname, &content, &len);






   TLHistoryFileName(expectedfname, tli);
   if (strcmp(fname, expectedfname) != 0)
    ereport(ERROR,
      (errcode(ERRCODE_PROTOCOL_VIOLATION),
       errmsg_internal("primary reported unexpected file name for timeline history file of timeline %u",
           tli)));




   writeTimeLineHistoryFile(tli, content, len);

   pfree(fname);
   pfree(content);
  }
 }
}

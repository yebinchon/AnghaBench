
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ outputKind; int connection; scalar_t__ pgCopyIn; } ;
typedef TYPE_1__ ArchiveHandle ;
typedef int Archive ;


 int ExecuteSimpleCommands (TYPE_1__*,char const*,size_t) ;
 int ExecuteSqlCommand (TYPE_1__*,char const*,char*) ;
 scalar_t__ OUTPUT_COPYDATA ;
 scalar_t__ OUTPUT_OTHERDATA ;
 int PQerrorMessage (int ) ;
 scalar_t__ PQputCopyData (int ,char const*,size_t) ;
 int fatal (char*,int ) ;
 int free (char*) ;
 int memcpy (char*,char const*,size_t) ;
 scalar_t__ pg_malloc (size_t) ;

int
ExecuteSqlCommandBuf(Archive *AHX, const char *buf, size_t bufLen)
{
 ArchiveHandle *AH = (ArchiveHandle *) AHX;

 if (AH->outputKind == OUTPUT_COPYDATA)
 {







  if (AH->pgCopyIn &&
   PQputCopyData(AH->connection, buf, bufLen) <= 0)
   fatal("error returned by PQputCopyData: %s",
      PQerrorMessage(AH->connection));
 }
 else if (AH->outputKind == OUTPUT_OTHERDATA)
 {




  ExecuteSimpleCommands(AH, buf, bufLen);
 }
 else
 {







  if (buf[bufLen] == '\0')
   ExecuteSqlCommand(AH, buf, "could not execute query");
  else
  {
   char *str = (char *) pg_malloc(bufLen + 1);

   memcpy(str, buf, bufLen);
   str[bufLen] = '\0';
   ExecuteSqlCommand(AH, str, "could not execute query");
   free(str);
  }
 }

 return bufLen;
}

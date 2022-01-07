
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int * currTablespace; int * currSchema; int * currUser; } ;
struct TYPE_11__ {char* data; } ;
typedef TYPE_1__ PQExpBufferData ;
typedef TYPE_2__ ArchiveHandle ;


 int ReconnectToServer (TYPE_2__*,char const*,int *) ;
 scalar_t__ RestoringToDB (TYPE_2__*) ;
 int _doSetFixedOutputState (TYPE_2__*) ;
 int ahprintf (TYPE_2__*,char*,char*) ;
 int appendPsqlMetaConnect (TYPE_1__*,char const*) ;
 int free (int *) ;
 int initPQExpBuffer (TYPE_1__*) ;
 int termPQExpBuffer (TYPE_1__*) ;

__attribute__((used)) static void
_reconnectToDB(ArchiveHandle *AH, const char *dbname)
{
 if (RestoringToDB(AH))
  ReconnectToServer(AH, dbname, ((void*)0));
 else
 {
  if (dbname)
  {
   PQExpBufferData connectbuf;

   initPQExpBuffer(&connectbuf);
   appendPsqlMetaConnect(&connectbuf, dbname);
   ahprintf(AH, "%s\n", connectbuf.data);
   termPQExpBuffer(&connectbuf);
  }
  else
   ahprintf(AH, "%s\n", "\\connect -\n");
 }





 if (AH->currUser)
  free(AH->currUser);
 AH->currUser = ((void*)0);


 if (AH->currSchema)
  free(AH->currSchema);
 AH->currSchema = ((void*)0);
 if (AH->currTablespace)
  free(AH->currTablespace);
 AH->currTablespace = ((void*)0);


 _doSetFixedOutputState(AH);
}

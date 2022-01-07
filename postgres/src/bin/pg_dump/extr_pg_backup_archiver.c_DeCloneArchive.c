
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ curCmd; } ;
struct TYPE_7__ {struct TYPE_7__* savedPassword; struct TYPE_7__* currTableAm; struct TYPE_7__* currTablespace; struct TYPE_7__* currSchema; struct TYPE_7__* currUser; TYPE_1__ sqlparse; int (* DeClonePtr ) (TYPE_2__*) ;int * connection; } ;
typedef TYPE_2__ ArchiveHandle ;


 int Assert (int ) ;
 int destroyPQExpBuffer (scalar_t__) ;
 int free (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

void
DeCloneArchive(ArchiveHandle *AH)
{

 Assert(AH->connection == ((void*)0));


 AH->DeClonePtr(AH);


 if (AH->sqlparse.curCmd)
  destroyPQExpBuffer(AH->sqlparse.curCmd);


 if (AH->currUser)
  free(AH->currUser);
 if (AH->currSchema)
  free(AH->currSchema);
 if (AH->currTablespace)
  free(AH->currTablespace);
 if (AH->currTableAm)
  free(AH->currTableAm);
 if (AH->savedPassword)
  free(AH->savedPassword);

 free(AH);
}

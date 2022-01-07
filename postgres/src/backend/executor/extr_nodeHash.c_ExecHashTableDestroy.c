
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nbatch; int hashCxt; scalar_t__* outerBatchFile; scalar_t__* innerBatchFile; } ;
typedef TYPE_1__* HashJoinTable ;


 int BufFileClose (scalar_t__) ;
 int MemoryContextDelete (int ) ;
 int pfree (TYPE_1__*) ;

void
ExecHashTableDestroy(HashJoinTable hashtable)
{
 int i;






 if (hashtable->innerBatchFile != ((void*)0))
 {
  for (i = 1; i < hashtable->nbatch; i++)
  {
   if (hashtable->innerBatchFile[i])
    BufFileClose(hashtable->innerBatchFile[i]);
   if (hashtable->outerBatchFile[i])
    BufFileClose(hashtable->outerBatchFile[i]);
  }
 }


 MemoryContextDelete(hashtable->hashCxt);


 pfree(hashtable);
}

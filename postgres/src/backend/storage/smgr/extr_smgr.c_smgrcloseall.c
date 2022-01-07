
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * SMgrRelation ;
typedef int HASH_SEQ_STATUS ;


 int * SMgrRelationHash ;
 int hash_seq_init (int *,int *) ;
 scalar_t__ hash_seq_search (int *) ;
 int smgrclose (int *) ;

void
smgrcloseall(void)
{
 HASH_SEQ_STATUS status;
 SMgrRelation reln;


 if (SMgrRelationHash == ((void*)0))
  return;

 hash_seq_init(&status, SMgrRelationHash);

 while ((reln = (SMgrRelation) hash_seq_search(&status)) != ((void*)0))
  smgrclose(reln);
}

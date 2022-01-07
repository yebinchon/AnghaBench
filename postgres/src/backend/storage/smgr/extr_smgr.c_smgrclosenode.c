
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * SMgrRelation ;
typedef int RelFileNodeBackend ;


 int HASH_FIND ;
 int * SMgrRelationHash ;
 scalar_t__ hash_search (int *,void*,int ,int *) ;
 int smgrclose (int *) ;

void
smgrclosenode(RelFileNodeBackend rnode)
{
 SMgrRelation reln;


 if (SMgrRelationHash == ((void*)0))
  return;

 reln = (SMgrRelation) hash_search(SMgrRelationHash,
           (void *) &rnode,
           HASH_FIND, ((void*)0));
 if (reln != ((void*)0))
  smgrclose(reln);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ssize; scalar_t__ (* alloc ) (int) ;int hcxt; } ;
typedef TYPE_1__ HTAB ;
typedef int * HASHSEGMENT ;
typedef int HASHBUCKET ;


 int CurrentDynaHashCxt ;
 int MemSet (int *,int ,int) ;
 scalar_t__ stub1 (int) ;

__attribute__((used)) static HASHSEGMENT
seg_alloc(HTAB *hashp)
{
 HASHSEGMENT segp;

 CurrentDynaHashCxt = hashp->hcxt;
 segp = (HASHSEGMENT) hashp->alloc(sizeof(HASHBUCKET) * hashp->ssize);

 if (!segp)
  return ((void*)0);

 MemSet(segp, 0, sizeof(HASHBUCKET) * hashp->ssize);

 return segp;
}

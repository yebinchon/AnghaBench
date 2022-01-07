
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ nitems; } ;
struct TYPE_7__ {scalar_t__ nlocks; TYPE_5__ jitarr; TYPE_5__ dsmarr; TYPE_5__ filearr; TYPE_5__ snapshotarr; TYPE_5__ tupdescarr; TYPE_5__ planrefarr; TYPE_5__ relrefarr; TYPE_5__ catlistrefarr; TYPE_5__ catrefarr; TYPE_5__ bufferarr; struct TYPE_7__* firstchild; } ;
typedef TYPE_1__* ResourceOwner ;


 int Assert (int) ;
 TYPE_1__* CurrentResourceOwner ;
 scalar_t__ MAX_RESOWNER_LOCKS ;
 int ResourceArrayFree (TYPE_5__*) ;
 int ResourceOwnerNewParent (TYPE_1__*,int *) ;
 int pfree (TYPE_1__*) ;

void
ResourceOwnerDelete(ResourceOwner owner)
{

 Assert(owner != CurrentResourceOwner);


 Assert(owner->bufferarr.nitems == 0);
 Assert(owner->catrefarr.nitems == 0);
 Assert(owner->catlistrefarr.nitems == 0);
 Assert(owner->relrefarr.nitems == 0);
 Assert(owner->planrefarr.nitems == 0);
 Assert(owner->tupdescarr.nitems == 0);
 Assert(owner->snapshotarr.nitems == 0);
 Assert(owner->filearr.nitems == 0);
 Assert(owner->dsmarr.nitems == 0);
 Assert(owner->jitarr.nitems == 0);
 Assert(owner->nlocks == 0 || owner->nlocks == MAX_RESOWNER_LOCKS + 1);





 while (owner->firstchild != ((void*)0))
  ResourceOwnerDelete(owner->firstchild);






 ResourceOwnerNewParent(owner, ((void*)0));


 ResourceArrayFree(&(owner->bufferarr));
 ResourceArrayFree(&(owner->catrefarr));
 ResourceArrayFree(&(owner->catlistrefarr));
 ResourceArrayFree(&(owner->relrefarr));
 ResourceArrayFree(&(owner->planrefarr));
 ResourceArrayFree(&(owner->tupdescarr));
 ResourceArrayFree(&(owner->snapshotarr));
 ResourceArrayFree(&(owner->filearr));
 ResourceArrayFree(&(owner->dsmarr));
 ResourceArrayFree(&(owner->jitarr));

 pfree(owner);
}

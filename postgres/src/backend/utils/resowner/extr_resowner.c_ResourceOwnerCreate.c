
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* name; int jitarr; int dsmarr; int filearr; int snapshotarr; int tupdescarr; int planrefarr; int relrefarr; int catlistrefarr; int catrefarr; int bufferarr; struct TYPE_4__* firstchild; struct TYPE_4__* nextchild; struct TYPE_4__* parent; } ;
typedef int ResourceOwnerData ;
typedef TYPE_1__* ResourceOwner ;


 int BufferGetDatum (int ) ;
 int FileGetDatum (int) ;
 int InvalidBuffer ;
 scalar_t__ MemoryContextAllocZero (int ,int) ;
 int PointerGetDatum (int *) ;
 int ResourceArrayInit (int *,int ) ;
 int TopMemoryContext ;

ResourceOwner
ResourceOwnerCreate(ResourceOwner parent, const char *name)
{
 ResourceOwner owner;

 owner = (ResourceOwner) MemoryContextAllocZero(TopMemoryContext,
               sizeof(ResourceOwnerData));
 owner->name = name;

 if (parent)
 {
  owner->parent = parent;
  owner->nextchild = parent->firstchild;
  parent->firstchild = owner;
 }

 ResourceArrayInit(&(owner->bufferarr), BufferGetDatum(InvalidBuffer));
 ResourceArrayInit(&(owner->catrefarr), PointerGetDatum(((void*)0)));
 ResourceArrayInit(&(owner->catlistrefarr), PointerGetDatum(((void*)0)));
 ResourceArrayInit(&(owner->relrefarr), PointerGetDatum(((void*)0)));
 ResourceArrayInit(&(owner->planrefarr), PointerGetDatum(((void*)0)));
 ResourceArrayInit(&(owner->tupdescarr), PointerGetDatum(((void*)0)));
 ResourceArrayInit(&(owner->snapshotarr), PointerGetDatum(((void*)0)));
 ResourceArrayInit(&(owner->filearr), FileGetDatum(-1));
 ResourceArrayInit(&(owner->dsmarr), PointerGetDatum(((void*)0)));
 ResourceArrayInit(&(owner->jitarr), PointerGetDatum(((void*)0)));

 return owner;
}

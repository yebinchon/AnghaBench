
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* nextchild; struct TYPE_4__* parent; struct TYPE_4__* firstchild; } ;
typedef TYPE_1__* ResourceOwner ;


 int Assert (int) ;

void
ResourceOwnerNewParent(ResourceOwner owner,
        ResourceOwner newparent)
{
 ResourceOwner oldparent = owner->parent;

 if (oldparent)
 {
  if (owner == oldparent->firstchild)
   oldparent->firstchild = owner->nextchild;
  else
  {
   ResourceOwner child;

   for (child = oldparent->firstchild; child; child = child->nextchild)
   {
    if (owner == child->nextchild)
    {
     child->nextchild = owner->nextchild;
     break;
    }
   }
  }
 }

 if (newparent)
 {
  Assert(owner != newparent);
  owner->parent = newparent;
  owner->nextchild = newparent->firstchild;
  newparent->firstchild = owner;
 }
 else
 {
  owner->parent = ((void*)0);
  owner->nextchild = ((void*)0);
 }
}

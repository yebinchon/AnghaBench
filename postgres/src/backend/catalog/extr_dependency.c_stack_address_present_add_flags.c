
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ classId; scalar_t__ objectId; scalar_t__ objectSubId; } ;
struct TYPE_5__ {int flags; TYPE_2__* object; struct TYPE_5__* next; } ;
typedef TYPE_1__ ObjectAddressStack ;
typedef TYPE_2__ ObjectAddress ;


 int DEPFLAG_SUBOBJECT ;

__attribute__((used)) static bool
stack_address_present_add_flags(const ObjectAddress *object,
        int flags,
        ObjectAddressStack *stack)
{
 bool result = 0;
 ObjectAddressStack *stackptr;

 for (stackptr = stack; stackptr; stackptr = stackptr->next)
 {
  const ObjectAddress *thisobj = stackptr->object;

  if (object->classId == thisobj->classId &&
   object->objectId == thisobj->objectId)
  {
   if (object->objectSubId == thisobj->objectSubId)
   {
    stackptr->flags |= flags;
    result = 1;
   }
   else if (thisobj->objectSubId == 0)
   {






    result = 1;
   }
   else if (object->objectSubId == 0)
   {





    if (flags)
     stackptr->flags |= (flags | DEPFLAG_SUBOBJECT);
   }
  }
 }

 return result;
}

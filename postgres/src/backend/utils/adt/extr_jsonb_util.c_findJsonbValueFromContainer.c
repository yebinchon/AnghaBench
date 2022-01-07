
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_22__ {int * children; } ;
struct TYPE_19__ {int len; int val; } ;
struct TYPE_20__ {TYPE_1__ string; } ;
struct TYPE_21__ {scalar_t__ type; TYPE_2__ val; } ;
typedef TYPE_3__ JsonbValue ;
typedef TYPE_4__ JsonbContainer ;
typedef int JEntry ;


 int Assert (int) ;
 int JBE_ADVANCE_OFFSET (int,int ) ;
 int JB_FARRAY ;
 int JB_FOBJECT ;
 scalar_t__ JsonContainerIsArray (TYPE_4__*) ;
 scalar_t__ JsonContainerIsObject (TYPE_4__*) ;
 int JsonContainerSize (TYPE_4__*) ;
 scalar_t__ equalsJsonbScalarValue (TYPE_3__*,TYPE_3__*) ;
 int fillJsonbValue (TYPE_4__*,int,char*,int,TYPE_3__*) ;
 TYPE_3__* getKeyJsonValueFromContainer (TYPE_4__*,int ,int ,int *) ;
 scalar_t__ jbvString ;
 TYPE_3__* palloc (int) ;
 int pfree (TYPE_3__*) ;

JsonbValue *
findJsonbValueFromContainer(JsonbContainer *container, uint32 flags,
       JsonbValue *key)
{
 JEntry *children = container->children;
 int count = JsonContainerSize(container);

 Assert((flags & ~(JB_FARRAY | JB_FOBJECT)) == 0);


 if (count <= 0)
  return ((void*)0);

 if ((flags & JB_FARRAY) && JsonContainerIsArray(container))
 {
  JsonbValue *result = palloc(sizeof(JsonbValue));
  char *base_addr = (char *) (children + count);
  uint32 offset = 0;
  int i;

  for (i = 0; i < count; i++)
  {
   fillJsonbValue(container, i, base_addr, offset, result);

   if (key->type == result->type)
   {
    if (equalsJsonbScalarValue(key, result))
     return result;
   }

   JBE_ADVANCE_OFFSET(offset, children[i]);
  }

  pfree(result);
 }
 else if ((flags & JB_FOBJECT) && JsonContainerIsObject(container))
 {

  Assert(key->type == jbvString);

  return getKeyJsonValueFromContainer(container, key->val.string.val,
           key->val.string.len, ((void*)0));
 }


 return ((void*)0);
}

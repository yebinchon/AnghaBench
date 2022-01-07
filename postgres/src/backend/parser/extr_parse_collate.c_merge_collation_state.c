
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int strength; void* collation; int location; int location2; int pstate; void* collation2; } ;
typedef TYPE_1__ assign_collations_context ;
typedef void* Oid ;
typedef int CollateStrength ;






 void* DEFAULT_COLLATION_OID ;
 int ERRCODE_COLLATION_MISMATCH ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,int ) ;
 int get_collation_name (void*) ;
 int parser_errposition (int ,int) ;

__attribute__((used)) static void
merge_collation_state(Oid collation,
       CollateStrength strength,
       int location,
       Oid collation2,
       int location2,
       assign_collations_context *context)
{





 if (strength > context->strength)
 {

  context->collation = collation;
  context->strength = strength;
  context->location = location;

  if (strength == 131)
  {
   context->collation2 = collation2;
   context->location2 = location2;
  }
 }
 else if (strength == context->strength)
 {

  switch (strength)
  {
   case 128:

    break;
   case 129:
    if (collation != context->collation)
    {



     if (context->collation == DEFAULT_COLLATION_OID)
     {

      context->collation = collation;
      context->strength = strength;
      context->location = location;
     }
     else if (collation != DEFAULT_COLLATION_OID)
     {







      context->strength = 131;
      context->collation2 = collation;
      context->location2 = location;
     }
    }
    break;
   case 131:

    break;
   case 130:
    if (collation != context->collation)
    {






     ereport(ERROR,
       (errcode(ERRCODE_COLLATION_MISMATCH),
        errmsg("collation mismatch between explicit collations \"%s\" and \"%s\"",
         get_collation_name(context->collation),
         get_collation_name(collation)),
        parser_errposition(context->pstate, location)));
    }
    break;
  }
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int hash; } ;
struct TYPE_13__ {int type; } ;
struct TYPE_10__ {int len; int val; } ;
struct TYPE_11__ {TYPE_1__ string; } ;
struct TYPE_12__ {TYPE_2__ val; int type; } ;
typedef TYPE_3__ JsonbValue ;
typedef TYPE_4__ JsonPathItem ;
typedef TYPE_5__ JsonPathGinPath ;


 int JsonbHashScalarValue (TYPE_3__*,int *) ;
 int jbvString ;




 int jspGetString (TYPE_4__*,int *) ;

__attribute__((used)) static bool
jsonb_path_ops__add_path_item(JsonPathGinPath *path, JsonPathItem *jsp)
{
 switch (jsp->type)
 {
  case 128:
   path->hash = 0;
   return 1;

  case 129:
   {
    JsonbValue jbv;

    jbv.type = jbvString;
    jbv.val.string.val = jspGetString(jsp, &jbv.val.string.len);

    JsonbHashScalarValue(&jbv, &path->hash);
    return 1;
   }

  case 130:
  case 131:
   return 1;

  default:

   return 0;
 }
}

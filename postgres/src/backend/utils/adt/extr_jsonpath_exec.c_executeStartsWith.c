
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ len; int val; } ;
struct TYPE_8__ {TYPE_2__ string; } ;
struct TYPE_10__ {TYPE_1__ val; } ;
typedef TYPE_3__ JsonbValue ;
typedef int JsonPathItem ;
typedef int JsonPathBool ;


 TYPE_3__* getScalar (TYPE_3__*,int ) ;
 int jbvString ;
 int jpbFalse ;
 int jpbTrue ;
 int jpbUnknown ;
 int memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static JsonPathBool
executeStartsWith(JsonPathItem *jsp, JsonbValue *whole, JsonbValue *initial,
      void *param)
{
 if (!(whole = getScalar(whole, jbvString)))
  return jpbUnknown;

 if (!(initial = getScalar(initial, jbvString)))
  return jpbUnknown;

 if (whole->val.string.len >= initial->val.string.len &&
  !memcmp(whole->val.string.val,
    initial->val.string.val,
    initial->val.string.len))
  return jpbTrue;

 return jpbFalse;
}

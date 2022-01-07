
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int jsonb_cont; int json_hash; } ;
struct TYPE_19__ {TYPE_3__ val; scalar_t__ is_json; } ;
struct TYPE_12__ {scalar_t__ len; int str; } ;
struct TYPE_13__ {TYPE_6__* jsonb; TYPE_1__ json; } ;
struct TYPE_18__ {TYPE_2__ val; scalar_t__ is_json; } ;
struct TYPE_15__ {int data; } ;
struct TYPE_16__ {TYPE_4__ binary; } ;
struct TYPE_17__ {scalar_t__ type; TYPE_5__ val; } ;
typedef TYPE_6__ JsonbValue ;
typedef TYPE_7__ JsValue ;
typedef TYPE_8__ JsObject ;


 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 scalar_t__ IsAJsonbScalar (TYPE_6__*) ;
 scalar_t__ JsonContainerIsObject (int ) ;
 scalar_t__ JsonContainerIsScalar (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 int get_json_object_as_hash (int ,scalar_t__,char*) ;
 scalar_t__ jbvBinary ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static void
JsValueToJsObject(JsValue *jsv, JsObject *jso)
{
 jso->is_json = jsv->is_json;

 if (jsv->is_json)
 {

  jso->val.json_hash =
   get_json_object_as_hash(jsv->val.json.str,
         jsv->val.json.len >= 0
         ? jsv->val.json.len
         : strlen(jsv->val.json.str),
         "populate_composite");
 }
 else
 {
  JsonbValue *jbv = jsv->val.jsonb;

  if (jbv->type == jbvBinary &&
   JsonContainerIsObject(jbv->val.binary.data))
  {
   jso->val.jsonb_cont = jbv->val.binary.data;
  }
  else
  {
   bool is_scalar;

   is_scalar = IsAJsonbScalar(jbv) ||
    (jbv->type == jbvBinary &&
     JsonContainerIsScalar(jbv->val.binary.data));
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      is_scalar
      ? errmsg("cannot call %s on a scalar",
         "populate_composite")
      : errmsg("cannot call %s on an array",
         "populate_composite")));
  }
 }
}

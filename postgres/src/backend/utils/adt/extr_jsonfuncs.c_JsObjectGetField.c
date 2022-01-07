
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int jsonb_cont; int json_hash; } ;
struct TYPE_15__ {TYPE_2__ val; scalar_t__ is_json; } ;
struct TYPE_10__ {scalar_t__ type; int len; int * str; } ;
struct TYPE_12__ {int * jsonb; TYPE_1__ json; } ;
struct TYPE_14__ {TYPE_3__ val; scalar_t__ is_json; } ;
struct TYPE_13__ {scalar_t__ type; int * val; } ;
typedef TYPE_4__ JsonHashEntry ;
typedef TYPE_5__ JsValue ;
typedef TYPE_6__ JsObject ;


 int HASH_FIND ;
 scalar_t__ JSON_TOKEN_NULL ;
 int * getKeyJsonValueFromContainer (int ,char*,int ,int *) ;
 TYPE_4__* hash_search (int ,char*,int ,int *) ;
 int strlen (char*) ;

__attribute__((used)) static bool
JsObjectGetField(JsObject *obj, char *field, JsValue *jsv)
{
 jsv->is_json = obj->is_json;

 if (jsv->is_json)
 {
  JsonHashEntry *hashentry = hash_search(obj->val.json_hash, field,
              HASH_FIND, ((void*)0));

  jsv->val.json.type = hashentry ? hashentry->type : JSON_TOKEN_NULL;
  jsv->val.json.str = jsv->val.json.type == JSON_TOKEN_NULL ? ((void*)0) :
   hashentry->val;
  jsv->val.json.len = jsv->val.json.str ? -1 : 0;

  return hashentry != ((void*)0);
 }
 else
 {
  jsv->val.jsonb = !obj->val.jsonb_cont ? ((void*)0) :
   getKeyJsonValueFromContainer(obj->val.jsonb_cont, field, strlen(field),
           ((void*)0));

  return jsv->val.jsonb != ((void*)0);
 }
}

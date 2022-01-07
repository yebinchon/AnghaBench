
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_13__ {int id; int * jbc; } ;
struct TYPE_12__ {TYPE_5__ baseObject; } ;
struct TYPE_9__ {scalar_t__ data; } ;
struct TYPE_10__ {TYPE_1__ binary; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_2__ val; } ;
typedef TYPE_3__ JsonbValue ;
typedef int JsonbContainer ;
typedef TYPE_4__ JsonPathExecContext ;
typedef TYPE_5__ JsonBaseObjectInfo ;


 scalar_t__ jbvBinary ;

__attribute__((used)) static JsonBaseObjectInfo
setBaseObject(JsonPathExecContext *cxt, JsonbValue *jbv, int32 id)
{
 JsonBaseObjectInfo baseObject = cxt->baseObject;

 cxt->baseObject.jbc = jbv->type != jbvBinary ? ((void*)0) :
  (JsonbContainer *) jbv->val.binary.data;
 cxt->baseObject.id = id;

 return baseObject;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int nPairs; TYPE_1__* pairs; } ;
struct TYPE_10__ {TYPE_2__ object; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_3__ val; } ;
struct TYPE_12__ {TYPE_4__ contVal; } ;
struct TYPE_8__ {TYPE_4__ value; } ;
typedef TYPE_4__ JsonbValue ;
typedef TYPE_5__ JsonbParseState ;


 int Assert (int) ;
 scalar_t__ jbvObject ;

__attribute__((used)) static void
appendValue(JsonbParseState *pstate, JsonbValue *scalarVal)
{
 JsonbValue *object = &pstate->contVal;

 Assert(object->type == jbvObject);

 object->val.object.pairs[object->val.object.nPairs++].value = *scalarVal;
}

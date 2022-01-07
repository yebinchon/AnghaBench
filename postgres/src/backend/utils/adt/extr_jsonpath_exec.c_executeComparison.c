
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int useTz; } ;
struct TYPE_4__ {int type; } ;
typedef int JsonbValue ;
typedef TYPE_1__ JsonPathItem ;
typedef TYPE_2__ JsonPathExecContext ;
typedef int JsonPathBool ;


 int compareItems (int ,int *,int *,int ) ;

__attribute__((used)) static JsonPathBool
executeComparison(JsonPathItem *cmp, JsonbValue *lv, JsonbValue *rv, void *p)
{
 JsonPathExecContext *cxt = (JsonPathExecContext *) p;

 return compareItems(cmp->type, lv, rv, cxt->useTz);
}

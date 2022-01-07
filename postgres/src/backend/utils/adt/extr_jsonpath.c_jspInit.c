
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int header; int data; } ;
typedef int JsonPathItem ;
typedef TYPE_1__ JsonPath ;


 int Assert (int) ;
 int JSONPATH_LAX ;
 int JSONPATH_VERSION ;
 int jspInitByBuffer (int *,int ,int ) ;

void
jspInit(JsonPathItem *v, JsonPath *js)
{
 Assert((js->header & ~JSONPATH_LAX) == JSONPATH_VERSION);
 jspInitByBuffer(v, js->data, 0);
}

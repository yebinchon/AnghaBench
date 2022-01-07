
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_5__ {char* data; int datalen; } ;
struct TYPE_6__ {TYPE_1__ value; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_2__ content; } ;
typedef TYPE_3__ JsonPathItem ;


 int Assert (int) ;
 scalar_t__ jpiKey ;
 scalar_t__ jpiString ;
 scalar_t__ jpiVariable ;

char *
jspGetString(JsonPathItem *v, int32 *len)
{
 Assert(v->type == jpiKey ||
     v->type == jpiString ||
     v->type == jpiVariable);

 if (len)
  *len = v->content.value.datalen;
 return v->content.value.data;
}

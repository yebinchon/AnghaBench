
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int proto; int short_form; } ;


 int SIZE (TYPE_1__*) ;
 TYPE_1__* proto_names ;
 int strcmp (char const*,int ) ;

int
ascii2proto(const char *proto_name)
{
    int i;
    for (i = 0; i < SIZE(proto_names); ++i)
    {
        if (!strcmp(proto_name, proto_names[i].short_form))
        {
            return proto_names[i].proto;
        }
    }
    return -1;
}

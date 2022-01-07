
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ sa_family_t ;
struct TYPE_3__ {scalar_t__ proto_af; int proto; char const* display_form; char const* short_form; } ;


 unsigned int SIZE (TYPE_1__*) ;
 TYPE_1__* proto_names ;

const char *
proto2ascii(int proto, sa_family_t af, bool display_form)
{
    unsigned int i;
    for (i = 0; i < SIZE(proto_names); ++i)
    {
        if (proto_names[i].proto_af == af && proto_names[i].proto == proto)
        {
            if (display_form)
            {
                return proto_names[i].display_form;
            }
            else
            {
                return proto_names[i].short_form;
            }
        }
    }

    return "[unknown protocol]";
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_log {int dummy; } ;
struct TYPE_2__ {int * name; } ;


 TYPE_1__* key_names ;
 int mp_info (struct mp_log*,char*,...) ;

void mp_print_key_list(struct mp_log *out)
{
    mp_info(out, "\n");
    for (int i = 0; key_names[i].name != ((void*)0); i++)
        mp_info(out, "%s\n", key_names[i].name);
}

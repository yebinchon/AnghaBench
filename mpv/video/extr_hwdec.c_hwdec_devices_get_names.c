
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_hwdec_devices {int num_hwctxs; TYPE_1__** hwctxs; } ;
struct TYPE_2__ {char* driver_name; } ;


 int ta_xstrdup_append (char**,char*) ;

char *hwdec_devices_get_names(struct mp_hwdec_devices *devs)
{
    char *res = ((void*)0);
    for (int n = 0; n < devs->num_hwctxs; n++) {
        if (res)
            ta_xstrdup_append(&res, ",");
        ta_xstrdup_append(&res, devs->hwctxs[n]->driver_name);
    }
    return res;
}

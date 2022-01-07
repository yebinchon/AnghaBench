
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hwdec_info {char* method_name; int rank; int auto_pos; TYPE_1__* codec; int name; scalar_t__ copying; } ;
struct TYPE_2__ {char* name; } ;


 int INT_MAX ;
 int MP_TARRAY_APPEND (int *,struct hwdec_info*,int,struct hwdec_info) ;
 scalar_t__* hwdec_autoprobe_order ;
 int mp_snprintf_cat (char*,int,char*) ;
 int snprintf (int ,int,char*,char*,char*) ;
 scalar_t__ strcmp (scalar_t__,char*) ;

__attribute__((used)) static void add_hwdec_item(struct hwdec_info **infos, int *num_infos,
                           struct hwdec_info info)
{
    if (info.copying)
        mp_snprintf_cat(info.method_name, sizeof(info.method_name), "-copy");



    snprintf(info.name, sizeof(info.name), "%s-%s",
             info.codec->name, info.method_name);

    info.rank = *num_infos;
    info.auto_pos = INT_MAX;
    for (int x = 0; hwdec_autoprobe_order[x]; x++) {
        if (strcmp(hwdec_autoprobe_order[x], info.method_name) == 0)
            info.auto_pos = x;
    }

    MP_TARRAY_APPEND(((void*)0), *infos, *num_infos, info);
}

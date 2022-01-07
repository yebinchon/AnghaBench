
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mp_log {int dummy; } ;
struct drm_object {TYPE_2__* props; TYPE_1__** props_info; int type; int id; } ;
struct TYPE_4__ {int count_props; scalar_t__* prop_values; } ;
struct TYPE_3__ {int name; } ;


 int mp_err (struct mp_log*,char*,int ,long long,...) ;

void drm_object_print_info(struct mp_log *log, struct drm_object *object)
{
    mp_err(log, "Object ID = %d (type = %x) has %d properties\n",
           object->id, object->type, object->props->count_props);

    for (int i = 0; i < object->props->count_props; i++)
        mp_err(log, "    Property '%s' = %lld\n", object->props_info[i]->name,
               (long long)object->props->prop_values[i]);
}

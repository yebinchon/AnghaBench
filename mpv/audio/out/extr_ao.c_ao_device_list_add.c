
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ao_device_list {scalar_t__ num_devices; int devices; } ;
struct ao_device_desc {char* desc; char* name; } ;
struct ao {TYPE_1__* driver; } ;
typedef int buf ;
struct TYPE_2__ {char* name; } ;


 int MP_TARRAY_APPEND (struct ao_device_list*,int ,scalar_t__,struct ao_device_desc) ;
 int snprintf (char*,int,char*,char const*) ;
 void* talloc_asprintf (struct ao_device_list*,char*,char const*,char*) ;
 void* talloc_strdup (struct ao_device_list*,char const*) ;

void ao_device_list_add(struct ao_device_list *list, struct ao *ao,
                        struct ao_device_desc *e)
{
    struct ao_device_desc c = *e;
    const char *dname = ao->driver->name;
    char buf[80];
    if (!c.desc || !c.desc[0]) {
        if (c.name && c.name[0]) {
            c.desc = c.name;
        } else if (list->num_devices) {

            snprintf(buf, sizeof(buf), "Default (%s)", dname);
            c.desc = buf;
        } else {

            c.desc = "Default";
        }
    }
    c.name = (c.name && c.name[0]) ? talloc_asprintf(list, "%s/%s", dname, c.name)
                                   : talloc_strdup(list, dname);
    c.desc = talloc_strdup(list, c.desc);
    MP_TARRAY_APPEND(list, list->devices, list->num_devices, c);
}

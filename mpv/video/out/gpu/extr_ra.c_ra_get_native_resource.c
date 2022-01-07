
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_native_resource {void* data; int name; } ;
struct ra {int num_native_resources; struct ra_native_resource* native_resources; } ;


 scalar_t__ strcmp (int ,char const*) ;

void *ra_get_native_resource(struct ra *ra, const char *name)
{
    for (int n = 0; n < ra->num_native_resources; n++) {
        struct ra_native_resource *r = &ra->native_resources[n];
        if (strcmp(r->name, name) == 0)
            return r->data;
    }

    return ((void*)0);
}

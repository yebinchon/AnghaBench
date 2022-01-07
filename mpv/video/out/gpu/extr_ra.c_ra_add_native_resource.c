
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_native_resource {char const* name; void* data; } ;
struct ra {int num_native_resources; int native_resources; } ;


 int MP_TARRAY_APPEND (struct ra*,int ,int ,struct ra_native_resource) ;

void ra_add_native_resource(struct ra *ra, const char *name, void *data)
{
    struct ra_native_resource r = {
        .name = name,
        .data = data,
    };
    MP_TARRAY_APPEND(ra, ra->native_resources, ra->num_native_resources, r);
}

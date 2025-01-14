
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_buf_params {scalar_t__ type; scalar_t__ size; scalar_t__ host_mapped; scalar_t__ host_mutable; } ;



__attribute__((used)) static bool ra_buf_params_compatible(const struct ra_buf_params *new,
                                     const struct ra_buf_params *old)
{
    return new->type == old->type &&
           new->size <= old->size &&
           new->host_mapped == old->host_mapped &&
           new->host_mutable == old->host_mutable;
}

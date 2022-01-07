
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_format {int dummy; } ;
struct ra {int dummy; } ;


 struct ra_format const* ra_find_float_format (struct ra*,int,int) ;

const struct ra_format *ra_find_float16_format(struct ra *ra, int n_components)
{
    return ra_find_float_format(ra, sizeof(float), n_components);
}

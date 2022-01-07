
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra {int dummy; } ;
typedef enum ra_vartype { ____Placeholder_ra_vartype } ra_vartype ;


 int * desc_type ;
 int get_gpu (struct ra*) ;
 int pl_desc_namespace (int ,int ) ;

__attribute__((used)) static int desc_namespace_pl(struct ra *ra, enum ra_vartype type)
{
    return pl_desc_namespace(get_gpu(ra), desc_type[type]);
}

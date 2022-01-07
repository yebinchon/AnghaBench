
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra {int dummy; } ;
typedef enum ra_vartype { ____Placeholder_ra_vartype } ra_vartype ;


 int RA_VARTYPE_BUF_RW ;
 int RA_VARTYPE_IMG_W ;

__attribute__((used)) static int desc_namespace(struct ra *ra, enum ra_vartype type)
{

    if (type == RA_VARTYPE_IMG_W)
        type = RA_VARTYPE_BUF_RW;
    return type;
}

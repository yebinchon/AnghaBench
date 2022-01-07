
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int X509V3_EXT_METHOD ;
struct TYPE_2__ {scalar_t__ excludedSubtrees; scalar_t__ permittedSubtrees; } ;
typedef TYPE_1__ NAME_CONSTRAINTS ;
typedef int BIO ;


 int BIO_puts (int *,char*) ;
 int do_i2r_name_constraints (int const*,scalar_t__,int *,int,char*) ;

__attribute__((used)) static int i2r_NAME_CONSTRAINTS(const X509V3_EXT_METHOD *method, void *a,
                                BIO *bp, int ind)
{
    NAME_CONSTRAINTS *ncons = a;
    do_i2r_name_constraints(method, ncons->permittedSubtrees,
                            bp, ind, "Permitted");
    if (ncons->permittedSubtrees && ncons->excludedSubtrees)
        BIO_puts(bp, "\n");
    do_i2r_name_constraints(method, ncons->excludedSubtrees,
                            bp, ind, "Excluded");
    return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ex_flags; long ex_pathlen; } ;
typedef TYPE_1__ X509 ;


 int EXFLAG_BCONS ;
 int X509_check_purpose (TYPE_1__*,int,int) ;

long X509_get_pathlen(X509 *x)
{

    if (X509_check_purpose(x, -1, -1) != 1
            || (x->ex_flags & EXFLAG_BCONS) == 0)
        return -1;
    return x->ex_pathlen;
}

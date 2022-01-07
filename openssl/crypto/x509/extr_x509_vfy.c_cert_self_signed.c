
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ex_flags; } ;
typedef TYPE_1__ X509 ;


 int EXFLAG_SS ;
 int X509_check_purpose (TYPE_1__*,int,int ) ;

__attribute__((used)) static int cert_self_signed(X509 *x)
{





    X509_check_purpose(x, -1, 0);
    if (x->ex_flags & EXFLAG_SS)
        return 1;
    else
        return 0;
}

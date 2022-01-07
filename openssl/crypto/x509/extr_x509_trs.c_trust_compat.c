
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int X509_TRUST ;
struct TYPE_4__ {int ex_flags; } ;
typedef TYPE_1__ X509 ;


 int EXFLAG_SS ;
 int X509_TRUST_NO_SS_COMPAT ;
 int X509_TRUST_TRUSTED ;
 int X509_TRUST_UNTRUSTED ;
 int X509_check_purpose (TYPE_1__*,int,int ) ;

__attribute__((used)) static int trust_compat(X509_TRUST *trust, X509 *x, int flags)
{

    X509_check_purpose(x, -1, 0);
    if ((flags & X509_TRUST_NO_SS_COMPAT) == 0 && x->ex_flags & EXFLAG_SS)
        return X509_TRUST_TRUSTED;
    else
        return X509_TRUST_UNTRUSTED;
}

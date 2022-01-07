
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ex_flags; int ex_nscert; } ;
typedef TYPE_1__ X509 ;


 int EXFLAG_BCONS ;
 int EXFLAG_CA ;
 int EXFLAG_KUSAGE ;
 int EXFLAG_NSCERT ;
 int KU_KEY_CERT_SIGN ;
 int NS_ANY_CA ;
 int V1_ROOT ;
 scalar_t__ ku_reject (TYPE_1__ const*,int ) ;

__attribute__((used)) static int check_ca(const X509 *x)
{

    if (ku_reject(x, KU_KEY_CERT_SIGN))
        return 0;
    if (x->ex_flags & EXFLAG_BCONS) {
        if (x->ex_flags & EXFLAG_CA)
            return 1;

        else
            return 0;
    } else {

        if ((x->ex_flags & V1_ROOT) == V1_ROOT)
            return 3;



        else if (x->ex_flags & EXFLAG_KUSAGE)
            return 4;

        else if (x->ex_flags & EXFLAG_NSCERT && x->ex_nscert & NS_ANY_CA)
            return 5;

        return 0;
    }
}

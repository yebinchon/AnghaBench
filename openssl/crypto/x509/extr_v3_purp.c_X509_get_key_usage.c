
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int ex_flags; int ex_kusage; } ;
typedef TYPE_1__ X509 ;


 int EXFLAG_KUSAGE ;
 int UINT32_MAX ;
 int X509_check_purpose (TYPE_1__*,int,int) ;

uint32_t X509_get_key_usage(X509 *x)
{

    X509_check_purpose(x, -1, -1);
    if (x->ex_flags & EXFLAG_KUSAGE)
        return x->ex_kusage;
    return UINT32_MAX;
}

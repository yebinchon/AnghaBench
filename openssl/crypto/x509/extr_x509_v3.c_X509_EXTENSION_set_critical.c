
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int critical; } ;
typedef TYPE_1__ X509_EXTENSION ;



int X509_EXTENSION_set_critical(X509_EXTENSION *ex, int crit)
{
    if (ex == ((void*)0))
        return 0;
    ex->critical = (crit) ? 0xFF : -1;
    return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error; } ;


 TYPE_1__* BN_str_reasons ;
 int ERR_load_strings_const (TYPE_1__*) ;
 int * ERR_reason_error_string (int ) ;

int ERR_load_BN_strings(void)
{

    if (ERR_reason_error_string(BN_str_reasons[0].error) == ((void*)0))
        ERR_load_strings_const(BN_str_reasons);

    return 1;
}

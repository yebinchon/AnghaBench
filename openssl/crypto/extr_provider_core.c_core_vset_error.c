
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int va_list ;
typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ error_lib; } ;
typedef TYPE_1__ OSSL_PROVIDER ;


 scalar_t__ ERR_GET_LIB (scalar_t__) ;
 int ERR_GET_REASON (scalar_t__) ;
 int ERR_vset_error (scalar_t__,int,char const*,int ) ;

__attribute__((used)) static void core_vset_error(const OSSL_PROVIDER *prov,
                            uint32_t reason, const char *fmt, va_list args)
{





    if (ERR_GET_LIB(reason) != 0) {
        ERR_vset_error(ERR_GET_LIB(reason), ERR_GET_REASON(reason), fmt, args);
    } else {
        ERR_vset_error(prov->error_lib, (int)reason, fmt, args);
    }
}

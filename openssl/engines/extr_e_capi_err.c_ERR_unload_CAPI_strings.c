
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAPI_str_reasons ;
 int ERR_unload_strings (int ,int ) ;
 scalar_t__ error_loaded ;
 int lib_code ;

__attribute__((used)) static void ERR_unload_CAPI_strings(void)
{
    if (error_loaded) {

        ERR_unload_strings(lib_code, CAPI_str_reasons);

        error_loaded = 0;
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PROVIDER ;


 int ERR_set_debug (char const*,int,char const*) ;

__attribute__((used)) static void core_set_error_debug(const OSSL_PROVIDER *prov,
                                 const char *file, int line, const char *func)
{
    ERR_set_debug(file, line, func);
}

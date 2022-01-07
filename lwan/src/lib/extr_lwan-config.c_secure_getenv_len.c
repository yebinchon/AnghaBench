
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ENV_VAR_NAME_LEN_MAX ;
 scalar_t__ UNLIKELY (int) ;
 int lwan_status_error (char*,size_t) ;
 char const* secure_getenv (int ) ;
 int strndupa (char const*,size_t) ;

__attribute__((used)) static __attribute__((noinline)) const char *secure_getenv_len(const char *key, size_t len)
{
    if (UNLIKELY(len > ENV_VAR_NAME_LEN_MAX)) {
        lwan_status_error("Variable name exceeds %d bytes", ENV_VAR_NAME_LEN_MAX);
        return ((void*)0);
    }

    return secure_getenv(strndupa(key, len));
}

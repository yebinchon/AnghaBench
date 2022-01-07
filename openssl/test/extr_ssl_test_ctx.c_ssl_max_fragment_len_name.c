
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OSSL_NELEM (int ) ;
 char const* enum_name (int ,int ,int) ;
 int ssl_max_fragment_len_mode ;

const char *ssl_max_fragment_len_name(int MFL_mode)
{
    return enum_name(ssl_max_fragment_len_mode,
                     OSSL_NELEM(ssl_max_fragment_len_mode), MFL_mode);
}

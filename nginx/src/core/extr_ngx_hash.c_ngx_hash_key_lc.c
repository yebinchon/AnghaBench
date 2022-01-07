
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef size_t ngx_uint_t ;


 size_t ngx_hash (size_t,int ) ;
 int ngx_tolower (int ) ;

ngx_uint_t
ngx_hash_key_lc(u_char *data, size_t len)
{
    ngx_uint_t i, key;

    key = 0;

    for (i = 0; i < len; i++) {
        key = ngx_hash(key, ngx_tolower(data[i]));
    }

    return key;
}

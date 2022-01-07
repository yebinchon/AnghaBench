
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_string ;
struct TYPE_4__ {int z_fun; } ;
typedef TYPE_1__ RedisArray ;


 scalar_t__ IS_NULL ;
 scalar_t__ Z_TYPE (int ) ;
 int * ra_call_extractor (TYPE_1__*,char const*,int) ;
 char* strchr (char const*,char) ;
 int * zend_string_init (char const*,int,int ) ;

__attribute__((used)) static zend_string *
ra_extract_key(RedisArray *ra, const char *key, int key_len)
{
    char *start, *end;

    if (Z_TYPE(ra->z_fun) != IS_NULL) {
        return ra_call_extractor(ra, key, key_len);
    } else if ((start = strchr(key, '{')) == ((void*)0) || (end = strchr(start + 1, '}')) == ((void*)0)) {
        return zend_string_init(key, key_len, 0);
    }

    return zend_string_init(start + 1, end - start - 1, 0);
}

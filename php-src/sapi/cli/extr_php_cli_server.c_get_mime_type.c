
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int extension_mime_types; } ;
typedef TYPE_1__ php_cli_server ;


 scalar_t__ zend_hash_str_find_ptr (int *,char const*,size_t) ;

__attribute__((used)) static const char *get_mime_type(const php_cli_server *server, const char *ext, size_t ext_len)
{
 return (const char*)zend_hash_str_find_ptr(&server->extension_mime_types, ext, ext_len);
}

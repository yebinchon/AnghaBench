
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_string ;
struct TYPE_4__ {int headers_original_case; int headers; } ;
struct TYPE_5__ {scalar_t__ current_header_value_len; int * current_header_value; int current_header_name_len; int * current_header_name; scalar_t__ current_header_name_allocated; TYPE_1__ request; } ;
typedef TYPE_2__ php_cli_server_client ;


 int GC_MAKE_PERSISTENT_LOCAL (int *) ;
 int ZSTR_VAL (int *) ;
 int pefree (int *,int) ;
 int zend_hash_add_ptr (int *,int *,int *) ;
 int zend_str_tolower_copy (int ,int *,int ) ;
 int * zend_string_alloc (int ,int) ;
 int * zend_string_init (int *,int ,int) ;
 int zend_string_release_ex (int *,int) ;

__attribute__((used)) static void php_cli_server_client_save_header(php_cli_server_client *client)
{

 zend_string *orig_header_name = zend_string_init(client->current_header_name, client->current_header_name_len, 1);
 zend_string *lc_header_name = zend_string_alloc(client->current_header_name_len, 1);
 zend_str_tolower_copy(ZSTR_VAL(lc_header_name), client->current_header_name, client->current_header_name_len);
 GC_MAKE_PERSISTENT_LOCAL(orig_header_name);
 GC_MAKE_PERSISTENT_LOCAL(lc_header_name);
 zend_hash_add_ptr(&client->request.headers, lc_header_name, client->current_header_value);
 zend_hash_add_ptr(&client->request.headers_original_case, orig_header_name, client->current_header_value);
 zend_string_release_ex(lc_header_name, 1);
 zend_string_release_ex(orig_header_name, 1);

 if (client->current_header_name_allocated) {
  pefree(client->current_header_name, 1);
  client->current_header_name_allocated = 0;
 }
 client->current_header_name = ((void*)0);
 client->current_header_name_len = 0;
 client->current_header_value = ((void*)0);
 client->current_header_value_len = 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
struct st_mysqlnd_plugin_header {scalar_t__ plugin_name; } ;
struct TYPE_4__ {scalar_t__ s; } ;
typedef TYPE_1__ smart_str ;


 int ZEND_HASH_APPLY_KEEP ;
 scalar_t__ Z_PTR_P (int *) ;
 int smart_str_appendc (TYPE_1__*,char) ;
 int smart_str_appends (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static int
mysqlnd_minfo_dump_loaded_plugins(zval *el, void * buf)
{
 smart_str * buffer = (smart_str *) buf;
 struct st_mysqlnd_plugin_header * plugin_header = (struct st_mysqlnd_plugin_header *)Z_PTR_P(el);
 if (plugin_header->plugin_name) {
  if (buffer->s) {
   smart_str_appendc(buffer, ',');
  }
  smart_str_appends(buffer, plugin_header->plugin_name);
 }
 return ZEND_HASH_APPLY_KEEP;
}

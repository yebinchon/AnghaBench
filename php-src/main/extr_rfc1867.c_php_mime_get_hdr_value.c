
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_llist ;
struct TYPE_4__ {char* value; int key; } ;
typedef TYPE_1__ mime_header_entry ;


 int strcasecmp (int ,char*) ;
 TYPE_1__* zend_llist_get_first (int *) ;
 TYPE_1__* zend_llist_get_next (int *) ;

__attribute__((used)) static char *php_mime_get_hdr_value(zend_llist header, char *key)
{
 mime_header_entry *entry;

 if (key == ((void*)0)) {
  return ((void*)0);
 }

 entry = zend_llist_get_first(&header);
 while (entry) {
  if (!strcasecmp(entry->key, key)) {
   return entry->value;
  }
  entry = zend_llist_get_next(&header);
 }

 return ((void*)0);
}

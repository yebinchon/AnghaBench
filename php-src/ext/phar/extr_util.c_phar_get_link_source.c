
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {char* link; TYPE_1__* phar; } ;
typedef TYPE_2__ phar_entry_info ;
struct TYPE_7__ {int manifest; } ;


 int efree (char*) ;
 char* phar_get_link_location (TYPE_2__*) ;
 int strlen (char*) ;
 TYPE_2__* zend_hash_str_find_ptr (int *,char*,int ) ;

phar_entry_info *phar_get_link_source(phar_entry_info *entry)
{
 phar_entry_info *link_entry;
 char *link;

 if (!entry->link) {
  return entry;
 }

 link = phar_get_link_location(entry);
 if (((void*)0) != (link_entry = zend_hash_str_find_ptr(&(entry->phar->manifest), entry->link, strlen(entry->link))) ||
  ((void*)0) != (link_entry = zend_hash_str_find_ptr(&(entry->phar->manifest), link, strlen(link)))) {
  if (link != entry->link) {
   efree(link);
  }
  return phar_get_link_source(link_entry);
 } else {
  if (link != entry->link) {
   efree(link);
  }
  return ((void*)0);
 }
}

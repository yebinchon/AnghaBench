
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {int * s; } ;
struct TYPE_4__ {char* filename; TYPE_1__ metadata_str; int metadata; scalar_t__ metadata_len; scalar_t__ is_persistent; scalar_t__ filename_len; void* tmp; void* link; int * phar; } ;
typedef TYPE_2__ phar_entry_info ;
typedef int phar_archive_data ;


 scalar_t__ IS_UNDEF ;
 int ZEND_HASH_APPLY_KEEP ;
 scalar_t__ Z_PTR (int ) ;
 scalar_t__ Z_PTR_P (int *) ;
 scalar_t__ Z_TYPE (int ) ;
 int efree (char*) ;
 void* estrdup (void*) ;
 void* estrndup (char*,scalar_t__) ;
 int phar_parse_metadata (char**,int *,scalar_t__) ;
 int zval_copy_ctor (int *) ;

__attribute__((used)) static int phar_update_cached_entry(zval *data, void *argument)
{
 phar_entry_info *entry = (phar_entry_info *)Z_PTR_P(data);

 entry->phar = (phar_archive_data *)argument;

 if (entry->link) {
  entry->link = estrdup(entry->link);
 }

 if (entry->tmp) {
  entry->tmp = estrdup(entry->tmp);
 }

 entry->metadata_str.s = ((void*)0);
 entry->filename = estrndup(entry->filename, entry->filename_len);
 entry->is_persistent = 0;

 if (Z_TYPE(entry->metadata) != IS_UNDEF) {
  if (entry->metadata_len) {
   char *buf = estrndup((char *) Z_PTR(entry->metadata), entry->metadata_len);

   phar_parse_metadata((char **) &buf, &entry->metadata, entry->metadata_len);
   efree(buf);
  } else {
   zval_copy_ctor(&entry->metadata);
   entry->metadata_str.s = ((void*)0);
  }
 }
 return ZEND_HASH_APPLY_KEEP;
}

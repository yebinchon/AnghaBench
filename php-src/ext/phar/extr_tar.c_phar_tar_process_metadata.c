
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int php_stream ;
struct TYPE_6__ {size_t uncompressed_filesize; int filename_len; int filename; int metadata; TYPE_1__* phar; } ;
typedef TYPE_2__ phar_entry_info ;
struct TYPE_5__ {int manifest; int metadata; } ;


 int FAILURE ;
 int SEEK_SET ;
 int SUCCESS ;
 int ZVAL_UNDEF (int *) ;
 int efree (char*) ;
 int memcmp (int,char*,int) ;
 int phar_parse_metadata (char**,int *,size_t) ;
 size_t php_stream_read (int *,char*,size_t) ;
 int php_stream_seek (int *,size_t,int ) ;
 size_t php_stream_tell (int *) ;
 scalar_t__ safe_emalloc (int,size_t,int) ;
 TYPE_2__* zend_hash_str_find_ptr (int *,int,int) ;

__attribute__((used)) static int phar_tar_process_metadata(phar_entry_info *entry, php_stream *fp)
{
 char *metadata;
 size_t save = php_stream_tell(fp), read;
 phar_entry_info *mentry;

 metadata = (char *) safe_emalloc(1, entry->uncompressed_filesize, 1);

 read = php_stream_read(fp, metadata, entry->uncompressed_filesize);
 if (read != entry->uncompressed_filesize) {
  efree(metadata);
  php_stream_seek(fp, save, SEEK_SET);
  return FAILURE;
 }

 if (phar_parse_metadata(&metadata, &entry->metadata, entry->uncompressed_filesize) == FAILURE) {

  efree(metadata);
  php_stream_seek(fp, save, SEEK_SET);
  return FAILURE;
 }

 if (entry->filename_len == sizeof(".phar/.metadata.bin")-1 && !memcmp(entry->filename, ".phar/.metadata.bin", sizeof(".phar/.metadata.bin")-1)) {
  entry->phar->metadata = entry->metadata;
  ZVAL_UNDEF(&entry->metadata);
 } else if (entry->filename_len >= sizeof(".phar/.metadata/") + sizeof("/.metadata.bin") - 1 && ((void*)0) != (mentry = zend_hash_str_find_ptr(&(entry->phar->manifest), entry->filename + sizeof(".phar/.metadata/") - 1, entry->filename_len - (sizeof("/.metadata.bin") - 1 + sizeof(".phar/.metadata/") - 1)))) {

  mentry->metadata = entry->metadata;
  ZVAL_UNDEF(&entry->metadata);
 }

 efree(metadata);
 php_stream_seek(fp, save, SEEK_SET);
 return SUCCESS;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
typedef int php_serialize_data_t ;
struct TYPE_8__ {int * s; } ;
struct TYPE_7__ {scalar_t__ fp_type; int is_modified; int filename_len; int filename; TYPE_1__* phar; TYPE_3__ metadata_str; int * fp; scalar_t__ offset_abs; scalar_t__ offset; scalar_t__ compressed_filesize; scalar_t__ uncompressed_filesize; } ;
typedef TYPE_2__ phar_entry_info ;
struct TYPE_6__ {int manifest; } ;


 scalar_t__ PHAR_MOD ;
 int PHP_VAR_SERIALIZE_DESTROY (int ) ;
 int PHP_VAR_SERIALIZE_INIT (int ) ;
 int ZEND_HASH_APPLY_KEEP ;
 int ZEND_HASH_APPLY_STOP ;
 scalar_t__ ZSTR_LEN (int *) ;
 int ZSTR_VAL (int *) ;
 int php_stream_close (int *) ;
 int * php_stream_fopen_tmpfile () ;
 scalar_t__ php_stream_write (int *,int ,scalar_t__) ;
 int php_var_serialize (TYPE_3__*,int *,int *) ;
 int smart_str_free (TYPE_3__*) ;
 int spprintf (char**,int ,char*,...) ;
 int zend_hash_str_del (int *,int ,int ) ;

int phar_tar_setmetadata(zval *metadata, phar_entry_info *entry, char **error)
{
 php_serialize_data_t metadata_hash;

 if (entry->metadata_str.s) {
  smart_str_free(&entry->metadata_str);
 }

 entry->metadata_str.s = ((void*)0);
 PHP_VAR_SERIALIZE_INIT(metadata_hash);
 php_var_serialize(&entry->metadata_str, metadata, &metadata_hash);
 PHP_VAR_SERIALIZE_DESTROY(metadata_hash);
 entry->uncompressed_filesize = entry->compressed_filesize = entry->metadata_str.s ? ZSTR_LEN(entry->metadata_str.s) : 0;

 if (entry->fp && entry->fp_type == PHAR_MOD) {
  php_stream_close(entry->fp);
 }

 entry->fp_type = PHAR_MOD;
 entry->is_modified = 1;
 entry->fp = php_stream_fopen_tmpfile();
 entry->offset = entry->offset_abs = 0;
 if (entry->fp == ((void*)0)) {
  spprintf(error, 0, "phar error: unable to create temporary file");
  return -1;
 }
 if (ZSTR_LEN(entry->metadata_str.s) != php_stream_write(entry->fp, ZSTR_VAL(entry->metadata_str.s), ZSTR_LEN(entry->metadata_str.s))) {
  spprintf(error, 0, "phar tar error: unable to write metadata to magic metadata file \"%s\"", entry->filename);
  zend_hash_str_del(&(entry->phar->manifest), entry->filename, entry->filename_len);
  return ZEND_HASH_APPLY_STOP;
 }

 return ZEND_HASH_APPLY_KEEP;
}

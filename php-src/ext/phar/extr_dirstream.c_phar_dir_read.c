
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_ulong ;
typedef int zend_string ;
typedef int ssize_t ;
struct TYPE_4__ {char* d_name; } ;
typedef TYPE_1__ php_stream_dirent ;
struct TYPE_5__ {scalar_t__ abstract; } ;
typedef TYPE_2__ php_stream ;
typedef int HashTable ;


 scalar_t__ HASH_KEY_NON_EXISTENT ;
 size_t MIN (size_t,size_t) ;
 size_t ZSTR_LEN (int *) ;
 int ZSTR_VAL (int *) ;
 int memcpy (char*,int ,size_t) ;
 int memset (char*,int ,int) ;
 scalar_t__ zend_hash_get_current_key (int *,int **,int *) ;
 int zend_hash_move_forward (int *) ;

__attribute__((used)) static ssize_t phar_dir_read(php_stream *stream, char *buf, size_t count)
{
 size_t to_read;
 HashTable *data = (HashTable *)stream->abstract;
 zend_string *str_key;
 zend_ulong unused;

 if (HASH_KEY_NON_EXISTENT == zend_hash_get_current_key(data, &str_key, &unused)) {
  return 0;
 }

 zend_hash_move_forward(data);
 to_read = MIN(ZSTR_LEN(str_key), count);

 if (to_read == 0 || count < ZSTR_LEN(str_key)) {
  return 0;
 }

 memset(buf, 0, sizeof(php_stream_dirent));
 memcpy(((php_stream_dirent *) buf)->d_name, ZSTR_VAL(str_key), to_read);
 ((php_stream_dirent *) buf)->d_name[to_read + 1] = '\0';

 return sizeof(php_stream_dirent);
}

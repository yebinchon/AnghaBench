
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * abstract; } ;
typedef TYPE_1__ php_stream ;
typedef int HashTable ;


 int FREE_HASHTABLE (int *) ;
 int zend_hash_destroy (int *) ;

__attribute__((used)) static int phar_dir_close(php_stream *stream, int close_handle)
{
 HashTable *data = (HashTable *)stream->abstract;

 if (data) {
  zend_hash_destroy(data);
  FREE_HASHTABLE(data);
  stream->abstract = ((void*)0);
 }

 return 0;
}

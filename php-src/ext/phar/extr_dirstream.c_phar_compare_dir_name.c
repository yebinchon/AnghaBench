
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int key; } ;
typedef TYPE_1__ Bucket ;


 int ZSTR_LEN (int ) ;
 int ZSTR_VAL (int ) ;
 int zend_binary_strcmp (int ,int ,int ,int ) ;

__attribute__((used)) static int phar_compare_dir_name(const void *a, const void *b)
{
 Bucket *f;
 Bucket *s;
 int result;

 f = (Bucket *) a;
 s = (Bucket *) b;
 result = zend_binary_strcmp(ZSTR_VAL(f->key), ZSTR_LEN(f->key), ZSTR_VAL(s->key), ZSTR_LEN(s->key));

 if (result < 0) {
  return -1;
 } else if (result > 0) {
  return 1;
 } else {
  return 0;
 }
}

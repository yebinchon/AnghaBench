
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ h; int key; } ;
typedef TYPE_1__ Bucket ;


 int ZSTR_LEN (int ) ;
 int ZSTR_VAL (int ) ;
 int zend_binary_strcasecmp (int ,int ,int ,int ) ;

__attribute__((used)) static int ini_key_compare(const void *a, const void *b)
{
 const Bucket *f;
 const Bucket *s;

 f = (const Bucket *) a;
 s = (const Bucket *) b;

 if (!f->key && !s->key) {
  if (f->h > s->h) {
   return -1;
  } else if (f->h < s->h) {
   return 1;
  }
  return 0;
 } else if (!f->key) {
  return -1;
 } else if (!s->key) {
  return 1;
 } else {
  return zend_binary_strcasecmp(ZSTR_VAL(f->key), ZSTR_LEN(f->key), ZSTR_VAL(s->key), ZSTR_LEN(s->key));
 }
}

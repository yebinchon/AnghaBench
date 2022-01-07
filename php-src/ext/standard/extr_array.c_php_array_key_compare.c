
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ zend_uchar ;
typedef scalar_t__ zend_long ;
struct TYPE_5__ {int len; int val; } ;
struct TYPE_4__ {TYPE_2__* key; scalar_t__ h; } ;
typedef TYPE_1__ Bucket ;


 scalar_t__ IS_DOUBLE ;
 scalar_t__ IS_LONG ;
 int ZEND_NORMALIZE_BOOL (scalar_t__) ;
 scalar_t__ is_numeric_string (int ,int ,scalar_t__*,double*,int) ;
 int zendi_smart_strcmp (TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static int php_array_key_compare(const void *a, const void *b)
{
 Bucket *f = (Bucket *) a;
 Bucket *s = (Bucket *) b;
 zend_uchar t;
 zend_long l1, l2;
 double d;

 if (f->key == ((void*)0)) {
  if (s->key == ((void*)0)) {
   return (zend_long)f->h > (zend_long)s->h ? 1 : -1;
  } else {
   l1 = (zend_long)f->h;
   t = is_numeric_string(s->key->val, s->key->len, &l2, &d, 1);
   if (t == IS_LONG) {

   } else if (t == IS_DOUBLE) {
    return ZEND_NORMALIZE_BOOL((double)l1 - d);
   } else {
    l2 = 0;
   }
  }
 } else {
  if (s->key) {
   return zendi_smart_strcmp(f->key, s->key);
  } else {
   l2 = (zend_long)s->h;
   t = is_numeric_string(f->key->val, f->key->len, &l1, &d, 1);
   if (t == IS_LONG) {

   } else if (t == IS_DOUBLE) {
    return ZEND_NORMALIZE_BOOL(d - (double)l2);
   } else {
    l1 = 0;
   }
  }
 }
 return ZEND_NORMALIZE_BOOL(l1 - l2);
}

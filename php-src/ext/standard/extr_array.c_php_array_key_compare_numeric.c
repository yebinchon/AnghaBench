
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ zend_long ;
struct TYPE_4__ {scalar_t__ h; TYPE_1__* key; } ;
struct TYPE_3__ {int val; } ;
typedef TYPE_2__ Bucket ;


 int ZEND_NORMALIZE_BOOL (double) ;
 double zend_strtod (int ,int *) ;

__attribute__((used)) static int php_array_key_compare_numeric(const void *a, const void *b)
{
 Bucket *f = (Bucket *) a;
 Bucket *s = (Bucket *) b;

 if (f->key == ((void*)0) && s->key == ((void*)0)) {
  return (zend_long)f->h > (zend_long)s->h ? 1 : -1;
 } else {
  double d1, d2;
  if (f->key) {
   d1 = zend_strtod(f->key->val, ((void*)0));
  } else {
   d1 = (double)(zend_long)f->h;
  }
  if (s->key) {
   d2 = zend_strtod(s->key->val, ((void*)0));
  } else {
   d2 = (double)(zend_long)s->h;
  }
  return ZEND_NORMALIZE_BOOL(d1 - d2);
 }
}

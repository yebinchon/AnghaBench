
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int buf2 ;
typedef int buf1 ;
struct TYPE_4__ {int h; TYPE_1__* key; } ;
struct TYPE_3__ {char* val; size_t len; } ;
typedef TYPE_2__ Bucket ;


 int MAX_LENGTH_OF_LONG ;
 int zend_binary_strcasecmp_l (char const*,size_t,char const*,size_t) ;
 char* zend_print_long_to_buf (char*,int ) ;

__attribute__((used)) static int php_array_key_compare_string_case(const void *a, const void *b)
{
 Bucket *f = (Bucket *) a;
 Bucket *s = (Bucket *) b;
 const char *s1, *s2;
 size_t l1, l2;
 char buf1[MAX_LENGTH_OF_LONG + 1];
 char buf2[MAX_LENGTH_OF_LONG + 1];

 if (f->key) {
  s1 = f->key->val;
  l1 = f->key->len;
 } else {
  s1 = zend_print_long_to_buf(buf1 + sizeof(buf1) - 1, f->h);
  l1 = buf1 + sizeof(buf1) - 1 - s1;
 }
 if (s->key) {
  s2 = s->key->val;
  l2 = s->key->len;
 } else {
  s2 = zend_print_long_to_buf(buf2 + sizeof(buf2) - 1, s->h);
  l2 = buf2 + sizeof(buf2) - 1 - s1;
 }
 return zend_binary_strcasecmp_l(s1, l1, s2, l2);
}

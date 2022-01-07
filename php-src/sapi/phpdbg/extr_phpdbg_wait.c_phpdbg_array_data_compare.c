
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
struct TYPE_2__ {int val; } ;
typedef TYPE_1__ Bucket ;


 int string_compare_function (int *,int *) ;

__attribute__((used)) static int phpdbg_array_data_compare(const void *a, const void *b) {
 Bucket *f, *s;
 int result;
 zval *first, *second;

 f = *((Bucket **) a);
 s = *((Bucket **) b);

 first = &f->val;
 second = &s->val;

 result = string_compare_function(first, second);

 if (result < 0) {
  return -1;
 } else if (result > 0) {
  return 1;
 }

 return 0;
}

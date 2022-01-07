
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
struct TYPE_2__ {int val; } ;
typedef TYPE_1__ Bucket ;


 scalar_t__ IS_INDIRECT ;
 scalar_t__ UNEXPECTED (int) ;
 int * Z_INDIRECT_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int string_case_compare_function (int *,int *) ;

__attribute__((used)) static int php_array_data_compare_string_case(const void *a, const void *b)
{
 Bucket *f;
 Bucket *s;
 zval *first;
 zval *second;

 f = (Bucket *) a;
 s = (Bucket *) b;

 first = &f->val;
 second = &s->val;

 if (UNEXPECTED(Z_TYPE_P(first) == IS_INDIRECT)) {
  first = Z_INDIRECT_P(first);
 }
 if (UNEXPECTED(Z_TYPE_P(second) == IS_INDIRECT)) {
  second = Z_INDIRECT_P(second);
 }

 return string_case_compare_function(first, second);
}

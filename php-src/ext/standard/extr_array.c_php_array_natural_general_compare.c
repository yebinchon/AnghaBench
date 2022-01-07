
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zend_string ;
struct TYPE_2__ {int val; } ;
typedef TYPE_1__ Bucket ;


 int ZSTR_LEN (int *) ;
 int ZSTR_VAL (int *) ;
 int strnatcmp_ex (int ,int ,int ,int ,int) ;
 int zend_tmp_string_release (int *) ;
 int * zval_get_tmp_string (int *,int **) ;

__attribute__((used)) static int php_array_natural_general_compare(const void *a, const void *b, int fold_case)
{
 Bucket *f = (Bucket *) a;
 Bucket *s = (Bucket *) b;
 zend_string *tmp_str1, *tmp_str2;
 zend_string *str1 = zval_get_tmp_string(&f->val, &tmp_str1);
 zend_string *str2 = zval_get_tmp_string(&s->val, &tmp_str2);

 int result = strnatcmp_ex(ZSTR_VAL(str1), ZSTR_LEN(str1), ZSTR_VAL(str2), ZSTR_LEN(str2), fold_case);

 zend_tmp_string_release(tmp_str1);
 zend_tmp_string_release(tmp_str2);
 return result;
}

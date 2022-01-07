
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 void* Z_PTR_P (int *) ;
 int pefree (void*,int) ;

__attribute__((used)) static void php_pcre_free_char_table(zval *data)
{
 void *ptr = Z_PTR_P(data);
 pefree(ptr, 1);
}

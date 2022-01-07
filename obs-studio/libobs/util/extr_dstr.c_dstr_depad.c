
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {scalar_t__* array; int len; } ;


 int dstr_free (struct dstr*) ;
 scalar_t__* strdepad (scalar_t__*) ;
 int strlen (scalar_t__*) ;

void dstr_depad(struct dstr *str)
{
 if (str->array) {
  str->array = strdepad(str->array);
  if (*str->array)
   str->len = strlen(str->array);
  else
   dstr_free(str);
 }
}

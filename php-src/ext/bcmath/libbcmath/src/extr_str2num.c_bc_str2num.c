
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* bc_num ;
struct TYPE_7__ {char* n_value; void* n_sign; } ;


 int BCG (int ) ;
 void* CH_VAL (int ) ;
 char FALSE ;
 int MIN (int,int) ;
 void* MINUS ;
 void* PLUS ;
 char TRUE ;
 int _zero_ ;
 TYPE_1__* bc_copy_num (int ) ;
 int bc_free_num (TYPE_1__**) ;
 scalar_t__ bc_is_zero (TYPE_1__*) ;
 TYPE_1__* bc_new_num (int,int) ;
 scalar_t__ isdigit (int) ;

int
bc_str2num (bc_num *num, char *str, int scale)
{
  int digits, strscale;
  char *ptr, *nptr;
  char zero_int;


  bc_free_num (num);


  ptr = str;
  digits = 0;
  strscale = 0;
  zero_int = FALSE;
  if ( (*ptr == '+') || (*ptr == '-')) ptr++;
  while (*ptr == '0') ptr++;
  while (isdigit((int)*ptr)) ptr++, digits++;
  if (*ptr == '.') ptr++;
  while (isdigit((int)*ptr)) ptr++, strscale++;
  if ((*ptr != '\0') || (digits+strscale == 0))
    {
      *num = bc_copy_num (BCG(_zero_));
      return *ptr == '\0';
    }


  strscale = MIN(strscale, scale);
  if (digits == 0)
    {
      zero_int = TRUE;
      digits = 1;
    }
  *num = bc_new_num (digits, strscale);


  ptr = str;
  if (*ptr == '-')
    {
      (*num)->n_sign = MINUS;
      ptr++;
    }
  else
    {
      (*num)->n_sign = PLUS;
      if (*ptr == '+') ptr++;
    }
  while (*ptr == '0') ptr++;
  nptr = (*num)->n_value;
  if (zero_int)
    {
      *nptr++ = 0;
      digits = 0;
    }
  for (;digits > 0; digits--)
    *nptr++ = CH_VAL(*ptr++);



  if (strscale > 0)
    {
      ptr++;
      for (;strscale > 0; strscale--)
 *nptr++ = CH_VAL(*ptr++);
    }

  if (bc_is_zero (*num))
    (*num)->n_sign = PLUS;

  return 1;
}

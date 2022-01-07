
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* bc_num ;
struct TYPE_4__ {int n_len; int n_scale; char* n_value; } ;


 TYPE_1__* BCG (int ) ;
 char FALSE ;
 char TRUE ;
 int _zero_ ;

char
bc_is_zero (bc_num num)
{
  int count;
  char *nptr;


  if (num == BCG(_zero_)) return TRUE;


  count = num->n_len + num->n_scale;
  nptr = num->n_value;


  while ((count > 0) && (*nptr++ == 0)) count--;

  if (count != 0)
    return FALSE;
  else
    return TRUE;
}

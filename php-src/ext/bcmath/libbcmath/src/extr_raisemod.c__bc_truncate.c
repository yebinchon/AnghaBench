
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* bc_num ;
struct TYPE_5__ {int n_len; int n_value; int n_sign; } ;


 int bc_free_num (TYPE_1__**) ;
 TYPE_1__* bc_new_num (int ,int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void
_bc_truncate (bc_num *num)
{
  bc_num temp;

  temp = bc_new_num ((*num)->n_len, 0);
  temp->n_sign = (*num)->n_sign;
  memcpy (temp->n_value, (*num)->n_value, (*num)->n_len);
  bc_free_num (num);
  *num = temp;
}

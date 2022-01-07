
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bc_num ;


 int BCG (int ) ;
 int _zero_ ;
 int bc_copy_num (int ) ;

void
bc_init_num (bc_num *num)
{
  *num = bc_copy_num (BCG(_zero_));
}

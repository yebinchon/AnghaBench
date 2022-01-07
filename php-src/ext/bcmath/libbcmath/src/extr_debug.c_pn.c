
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bc_num ;


 int bc_out_num (int ,int,int (*) (char),int ) ;
 int out_char (char) ;

void
pn (bc_num num)
{
  bc_out_num (num, 10, out_char, 0);
  out_char ('\n');
}

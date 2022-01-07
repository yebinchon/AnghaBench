
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d_info {int dummy; } ;


 int d_check_char (struct d_info*,char) ;
 int d_number (struct d_info*) ;
 char d_peek_char (struct d_info*) ;

__attribute__((used)) static int
d_compact_number (struct d_info *di)
{
  int num;
  if (d_peek_char (di) == '_')
    num = 0;
  else if (d_peek_char (di) == 'n')
    return -1;
  else
    num = d_number (di) + 1;

  if (num < 0 || ! d_check_char (di, '_'))
    return -1;
  return num;
}

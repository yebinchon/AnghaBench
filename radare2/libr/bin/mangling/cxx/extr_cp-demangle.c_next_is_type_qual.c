
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d_info {int dummy; } ;


 char d_peek_char (struct d_info*) ;
 char d_peek_next_char (struct d_info*) ;

__attribute__((used)) static int
next_is_type_qual (struct d_info *di)
{
  char peek = d_peek_char (di);
  if (peek == 'r' || peek == 'V' || peek == 'K')
    return 1;
  if (peek == 'D')
    {
      peek = d_peek_next_char (di);
      if (peek == 'x' || peek == 'o' || peek == 'O' || peek == 'w')
 return 1;
    }
  return 0;
}

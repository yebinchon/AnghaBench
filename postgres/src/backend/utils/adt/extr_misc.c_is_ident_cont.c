
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_ident_start (unsigned char) ;

__attribute__((used)) static bool
is_ident_cont(unsigned char c)
{

 if ((c >= '0' && c <= '9') || c == '$')
  return 1;

 return is_ident_start(c);
}

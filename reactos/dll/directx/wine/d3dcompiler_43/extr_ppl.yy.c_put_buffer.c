
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_text_to_macro (char const*,int) ;
 scalar_t__ top_macro () ;
 int wpp_write (char const*,int) ;

__attribute__((used)) static void put_buffer(const char *s, int len)
{
 if(top_macro())
  add_text_to_macro(s, len);
 else
  wpp_write(s, len);
}

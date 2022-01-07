
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d_print_info {int dummy; } ;


 int d_append_buffer (struct d_print_info*,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static inline void
d_append_string (struct d_print_info *dpi, const char *s)
{
  d_append_buffer (dpi, s, strlen (s));
}

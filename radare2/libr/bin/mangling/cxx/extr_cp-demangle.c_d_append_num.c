
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d_print_info {int dummy; } ;


 int d_append_string (struct d_print_info*,char*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static inline void
d_append_num (struct d_print_info *dpi, int l)
{
  char buf[25];
  sprintf (buf,"%d", l);
  d_append_string (dpi, buf);
}

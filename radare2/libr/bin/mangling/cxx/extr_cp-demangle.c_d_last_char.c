
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d_print_info {char last_char; } ;



__attribute__((used)) static inline char
d_last_char (struct d_print_info *dpi)
{
  return dpi->last_char;
}

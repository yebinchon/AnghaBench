
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d_print_info {scalar_t__ demangle_failure; } ;



__attribute__((used)) static inline int
d_print_saw_error (struct d_print_info *dpi)
{
  return dpi->demangle_failure != 0;
}

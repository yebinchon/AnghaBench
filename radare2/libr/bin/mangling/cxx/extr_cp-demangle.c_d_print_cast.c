
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {int dummy; } ;
struct d_print_info {int dummy; } ;


 int d_left (struct demangle_component*) ;
 int d_print_comp (struct d_print_info*,int,int ) ;

__attribute__((used)) static void
d_print_cast (struct d_print_info *dpi, int options,
       struct demangle_component *dc)
{
  d_print_comp (dpi, options, d_left (dc));
}

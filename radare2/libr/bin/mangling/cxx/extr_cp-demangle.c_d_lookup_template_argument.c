
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int number; } ;
struct TYPE_6__ {TYPE_2__ s_number; } ;
struct demangle_component {TYPE_3__ u; } ;
struct d_print_info {TYPE_1__* templates; } ;
struct TYPE_4__ {int template_decl; } ;


 struct demangle_component* d_index_template_argument (int ,int ) ;
 int d_print_error (struct d_print_info*) ;
 int d_right (int ) ;

__attribute__((used)) static struct demangle_component *
d_lookup_template_argument (struct d_print_info *dpi,
       const struct demangle_component *dc)
{
  if (dpi->templates == ((void*)0))
    {
      d_print_error (dpi);
      return ((void*)0);
    }

  return d_index_template_argument
    (d_right (dpi->templates->template_decl),
     dc->u.s_number.number);
}

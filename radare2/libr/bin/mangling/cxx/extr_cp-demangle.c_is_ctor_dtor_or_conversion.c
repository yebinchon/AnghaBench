
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {int type; } ;







 struct demangle_component* d_right (struct demangle_component*) ;

__attribute__((used)) static int
is_ctor_dtor_or_conversion (struct demangle_component *dc)
{
  if (dc == ((void*)0))
    return 0;
  switch (dc->type)
    {
    default:
      return 0;
    case 128:
    case 129:
      return is_ctor_dtor_or_conversion (d_right (dc));
    case 131:
    case 130:
    case 132:
      return 1;
    }
}

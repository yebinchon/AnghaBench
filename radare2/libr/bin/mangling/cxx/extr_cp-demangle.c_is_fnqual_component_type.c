
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum demangle_component_type { ____Placeholder_demangle_component_type } demangle_component_type ;



__attribute__((used)) static int
is_fnqual_component_type (enum demangle_component_type type)
{
  switch (type)
    {
    FNQUAL_COMPONENT_CASE:
      return 1;
    default:
      break;
    }
  return 0;
}

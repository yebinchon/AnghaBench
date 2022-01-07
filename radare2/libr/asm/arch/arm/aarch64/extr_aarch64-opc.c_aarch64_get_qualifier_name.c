
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t aarch64_opnd_qualifier_t ;
struct TYPE_2__ {char const* desc; } ;


 TYPE_1__* aarch64_opnd_qualifiers ;

const char*
aarch64_get_qualifier_name (aarch64_opnd_qualifier_t qualifier)
{
  return aarch64_opnd_qualifiers[qualifier].desc;
}

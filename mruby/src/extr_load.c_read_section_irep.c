
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rite_section_irep_header {int dummy; } ;
typedef int mrb_state ;
typedef int mrb_irep ;


 int * read_irep_record (int *,int const*,size_t*,int ) ;

__attribute__((used)) static mrb_irep*
read_section_irep(mrb_state *mrb, const uint8_t *bin, uint8_t flags)
{
  size_t len;

  bin += sizeof(struct rite_section_irep_header);
  return read_irep_record(mrb, bin, &len, flags);
}

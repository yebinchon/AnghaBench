
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct rite_binary_footer {int section_size; int * section_ident; } ;
typedef int mrb_state ;


 struct rite_binary_footer* RITE_BINARY_EOF ;
 int memcpy (int *,struct rite_binary_footer*,int) ;
 int uint32_to_bin (int,int ) ;

__attribute__((used)) static uint32_t
write_footer(mrb_state *mrb, uint8_t *bin)
{
  struct rite_binary_footer footer;

  memcpy(footer.section_ident, RITE_BINARY_EOF, sizeof(footer.section_ident));
  uint32_to_bin(sizeof(struct rite_binary_footer), footer.section_size);
  memcpy(bin, &footer, sizeof(struct rite_binary_footer));

  return sizeof(struct rite_binary_footer);
}

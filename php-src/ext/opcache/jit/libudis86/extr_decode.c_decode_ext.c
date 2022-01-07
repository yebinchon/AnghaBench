
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint16_t ;
struct ud {int dis_mode; TYPE_1__* le; int vendor; int pfx_adr; int pfx_opr; int pfx_rex; } ;
struct TYPE_2__ {int type; int* table; } ;


 int MODRM_MOD (int ) ;
 size_t MODRM_REG (int ) ;
 size_t MODRM_RM (int ) ;
 int REX_W (int ) ;
 int UD_ASSERT (int) ;
 int UD_TAB__OPC_3DNOW ;
 int UD_VENDOR_AMD ;
 int UD_VENDOR_ANY ;
 int decode_3dnow (struct ud*) ;
 int decode_insn (struct ud*,int) ;
 int decode_opcode (struct ud*) ;
 int decode_ssepfx (struct ud*) ;
 int decode_vex (struct ud*) ;
 int eff_adr_mode (int,int ) ;
 int eff_opr_mode (int,int ,int ) ;
 int inp_next (struct ud*) ;
 int modrm (struct ud*) ;
 TYPE_1__* ud_lookup_table_list ;
 size_t vex_l (struct ud*) ;
 size_t vex_w (struct ud*) ;

__attribute__((used)) static int
decode_ext(struct ud *u, uint16_t ptr)
{
  uint8_t idx = 0;
  if ((ptr & 0x8000) == 0) {
    return decode_insn(u, ptr);
  }
  u->le = &ud_lookup_table_list[(~0x8000 & ptr)];
  if (u->le->type == UD_TAB__OPC_3DNOW) {
    return decode_3dnow(u);
  }

  switch (u->le->type) {
    case 139:

      idx = (MODRM_MOD(modrm(u)) + 1) / 4;
      break;



    case 138:
      idx = u->dis_mode != 64 ? 0 : 1;
      break;
    case 137:
      idx = eff_opr_mode(u->dis_mode, REX_W(u->pfx_rex), u->pfx_opr) / 32;
      break;
    case 140:
      idx = eff_adr_mode(u->dis_mode, u->pfx_adr) / 32;
      break;
    case 128:
      idx = modrm(u) - 0xC0;
      break;
    case 132:
      if (u->vendor == UD_VENDOR_ANY) {

        idx = (u->le->table[idx] != 0) ? 0 : 1;
      } else if (u->vendor == UD_VENDOR_AMD) {
        idx = 0;
      } else {
        idx = 1;
      }
      break;
    case 135:
      idx = MODRM_RM(modrm(u));
      break;
    case 136:
      idx = MODRM_REG(modrm(u));
      break;
    case 134:
      return decode_ssepfx(u);
    case 131:
      return decode_vex(u);
    case 129:
      idx = vex_w(u);
      break;
    case 130:
      idx = vex_l(u);
      break;
    case 133:
      inp_next(u);
      return decode_opcode(u);
    default:
      UD_ASSERT(!"not reached");
      break;
  }

  return decode_ext(u, u->le->table[idx]);
}

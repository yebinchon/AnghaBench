
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ud {scalar_t__ inp_ctr; int pfx_adr; int pfx_lock; int pfx_opr; int pfx_str; int dis_mode; int pfx_rex; int pfx_seg; } ;


 scalar_t__ MAX_INSN_LENGTH ;
 int UD_RETURN_ON_ERROR (struct ud*) ;
 int UD_RETURN_WITH_ERROR (struct ud*,char*) ;
 int UD_R_CS ;
 int UD_R_DS ;
 int UD_R_ES ;
 int UD_R_FS ;
 int UD_R_GS ;
 int UD_R_SS ;
 int inp_next (struct ud*) ;

__attribute__((used)) static int
decode_prefixes(struct ud *u)
{
  int done = 0;
  uint8_t curr = 0, last = 0;
  UD_RETURN_ON_ERROR(u);

  do {
    last = curr;
    curr = inp_next(u);
    UD_RETURN_ON_ERROR(u);
    if (u->inp_ctr == MAX_INSN_LENGTH) {
      UD_RETURN_WITH_ERROR(u, "max instruction length");
    }

    switch (curr)
    {
    case 0x2E:
      u->pfx_seg = UD_R_CS;
      break;
    case 0x36:
      u->pfx_seg = UD_R_SS;
      break;
    case 0x3E:
      u->pfx_seg = UD_R_DS;
      break;
    case 0x26:
      u->pfx_seg = UD_R_ES;
      break;
    case 0x64:
      u->pfx_seg = UD_R_FS;
      break;
    case 0x65:
      u->pfx_seg = UD_R_GS;
      break;
    case 0x67:
      u->pfx_adr = 0x67;
      break;
    case 0xF0:
      u->pfx_lock = 0xF0;
      break;
    case 0x66:
      u->pfx_opr = 0x66;
      break;
    case 0xF2:
      u->pfx_str = 0xf2;
      break;
    case 0xF3:
      u->pfx_str = 0xf3;
      break;
    default:

      done = (u->dis_mode == 64 && (curr & 0xF0) == 0x40) ? 0 : 1;
      break;
    }
  } while (!done);

  if (u->dis_mode == 64 && (last & 0xF0) == 0x40) {
    u->pfx_rex = last;
  }
  return 0;
}

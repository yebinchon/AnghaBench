
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct ud {int pfx_str; int pfx_opr; TYPE_1__* le; } ;
struct TYPE_2__ {scalar_t__* table; } ;


 int decode_ext (struct ud*,scalar_t__) ;

__attribute__((used)) static int
decode_ssepfx(struct ud *u)
{
  uint8_t idx;
  uint8_t pfx;





  pfx = u->pfx_str;
  if (pfx == 0) {
    pfx = u->pfx_opr;
  }
  idx = ((pfx & 0xf) + 1) / 2;
  if (u->le->table[idx] == 0) {
    idx = 0;
  }
  if (idx && u->le->table[idx] != 0) {




    u->pfx_str = 0;
    if (pfx == 0x66) {





        u->pfx_opr = 0;
    }
  }
  return decode_ext(u, u->le->table[idx]);
}

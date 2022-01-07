
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct ud {int dis_mode; int vex_op; int vex_b1; int vex_b2; TYPE_1__* le; } ;
struct TYPE_2__ {int * table; } ;


 int MODRM_MOD (int ) ;
 int UD_ASSERT (int) ;
 int UD_RETURN_ON_ERROR (struct ud*) ;
 int UD_RETURN_WITH_ERROR (struct ud*,char*) ;
 int decode_ext (struct ud*,int ) ;
 int inp_curr (struct ud*) ;
 void* inp_next (struct ud*) ;
 int inp_peek (struct ud*) ;

__attribute__((used)) static int
decode_vex(struct ud *u)
{
  uint8_t index;
  if (u->dis_mode != 64 && MODRM_MOD(inp_peek(u)) != 0x3) {
    index = 0;
  } else {
    u->vex_op = inp_curr(u);
    u->vex_b1 = inp_next(u);
    if (u->vex_op == 0xc4) {
      uint8_t pp, m;

      u->vex_b2 = inp_next(u);
      UD_RETURN_ON_ERROR(u);
      m = u->vex_b1 & 0x1f;
      if (m == 0 || m > 3) {
        UD_RETURN_WITH_ERROR(u, "reserved vex.m-mmmm value");
      }
      pp = u->vex_b2 & 0x3;
      index = (pp << 2) | m;
    } else {

      UD_ASSERT(u->vex_op == 0xc5);
      index = 0x1 | ((u->vex_b1 & 0x3) << 2);
    }
  }
  return decode_ext(u, u->le->table[index]);
}

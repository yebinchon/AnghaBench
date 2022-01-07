
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ud {int dis_mode; int vex_op; int _rex; int vex_b1; int vex_b2; int pfx_rex; int opr_mode; int adr_mode; scalar_t__ pfx_adr; scalar_t__ pfx_opr; TYPE_1__* itab_entry; scalar_t__ error; } ;
struct TYPE_2__ {int prefix; } ;


 int P_DEF64 (int ) ;
 scalar_t__ P_INV64 (int ) ;
 int REX_PFX_MASK (int ) ;
 scalar_t__ REX_W (int) ;
 int UDERR (struct ud*,char*) ;
 int UD_ASSERT (int) ;

__attribute__((used)) static int
resolve_mode( struct ud* u )
{
  int default64;

  if ( u->error ) return -1;


  if ( u->dis_mode == 64 ) {


    if ( P_INV64( u->itab_entry->prefix ) ) {
      UDERR(u, "instruction invalid in 64bits\n");
      return -1;
    }






    if (u->vex_op == 0xc4) {

        u->_rex = ((~(u->vex_b1 >> 5) & 0x7) |
                   ((u->vex_b2 >> 4) & 0x8) );
    } else if (u->vex_op == 0xc5) {

        u->_rex = (~(u->vex_b1 >> 5)) & 4;
    } else {
        UD_ASSERT(u->vex_op == 0);
        u->_rex = u->pfx_rex;
    }
    u->_rex &= REX_PFX_MASK(u->itab_entry->prefix);




    default64 = P_DEF64( u->itab_entry->prefix );

    if (REX_W(u->_rex)) {
        u->opr_mode = 64;
    } else if ( u->pfx_opr ) {
        u->opr_mode = 16;
    } else {




        u->opr_mode = default64 ? 64 : 32;
    }


    u->adr_mode = (u->pfx_adr) ? 32 : 64;
  } else if ( u->dis_mode == 32 ) {
    u->opr_mode = ( u->pfx_opr ) ? 16 : 32;
    u->adr_mode = ( u->pfx_adr ) ? 16 : 32;
  } else if ( u->dis_mode == 16 ) {
    u->opr_mode = ( u->pfx_opr ) ? 32 : 16;
    u->adr_mode = ( u->pfx_adr ) ? 32 : 16;
  }

  return 0;
}

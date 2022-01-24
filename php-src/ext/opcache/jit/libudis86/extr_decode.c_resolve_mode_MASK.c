#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ud {int dis_mode; int vex_op; int _rex; int vex_b1; int vex_b2; int pfx_rex; int opr_mode; int adr_mode; scalar_t__ pfx_adr; scalar_t__ pfx_opr; TYPE_1__* itab_entry; scalar_t__ error; } ;
struct TYPE_2__ {int /*<<< orphan*/  prefix; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ud*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6( struct ud* u )
{
  int default64;
  /* if in error state, bail out */
  if ( u->error ) return -1; 

  /* propagate prefix effects */
  if ( u->dis_mode == 64 ) {  /* set 64bit-mode flags */

    /* Check validity of  instruction m64 */
    if ( FUNC1( u->itab_entry->prefix ) ) {
      FUNC4(u, "instruction invalid in 64bits\n");
      return -1;
    }

    /* compute effective rex based on,
     *  - vex prefix (if any)
     *  - rex prefix (if any, and not vex)
     *  - allowed prefixes specified by the opcode map
     */
    if (u->vex_op == 0xc4) {
        /* vex has rex.rxb in 1's complement */
        u->_rex = ((~(u->vex_b1 >> 5) & 0x7) /* rex.0rxb */ | 
                   ((u->vex_b2  >> 4) & 0x8) /* rex.w000 */);
    } else if (u->vex_op == 0xc5) {
        /* vex has rex.r in 1's complement */
        u->_rex = (~(u->vex_b1 >> 5)) & 4;
    } else {
        FUNC5(u->vex_op == 0);
        u->_rex = u->pfx_rex;
    }
    u->_rex &= FUNC2(u->itab_entry->prefix);

    /* whether this instruction has a default operand size of 
     * 64bit, also hardcoded into the opcode map.
     */
    default64 = FUNC0( u->itab_entry->prefix ); 
    /* calculate effective operand size */
    if (FUNC3(u->_rex)) {
        u->opr_mode = 64;
    } else if ( u->pfx_opr ) {
        u->opr_mode = 16;
    } else {
        /* unless the default opr size of instruction is 64,
         * the effective operand size in the absence of rex.w
         * prefix is 32.
         */
        u->opr_mode = default64 ? 64 : 32;
    }

    /* calculate effective address size */
    u->adr_mode = (u->pfx_adr) ? 32 : 64;
  } else if ( u->dis_mode == 32 ) { /* set 32bit-mode flags */
    u->opr_mode = ( u->pfx_opr ) ? 16 : 32;
    u->adr_mode = ( u->pfx_adr ) ? 16 : 32;
  } else if ( u->dis_mode == 16 ) { /* set 16bit-mode flags */
    u->opr_mode = ( u->pfx_opr ) ? 32 : 16;
    u->adr_mode = ( u->pfx_adr ) ? 32 : 16;
  }

  return 0;
}
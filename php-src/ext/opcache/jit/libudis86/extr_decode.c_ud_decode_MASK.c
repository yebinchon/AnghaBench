#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ud {int error; unsigned int inp_ctr; int /*<<< orphan*/  pc; scalar_t__ asm_buf_fill; int /*<<< orphan*/  insn_offset; scalar_t__ pfx_seg; TYPE_1__* operand; TYPE_2__* itab_entry; int /*<<< orphan*/  mnemonic; int /*<<< orphan*/ * le; } ;
struct TYPE_4__ {int /*<<< orphan*/  prefix; int /*<<< orphan*/  mnemonic; } ;
struct TYPE_3__ {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ UD_OP_MEM ; 
 int /*<<< orphan*/  FUNC1 (struct ud*) ; 
 int FUNC2 (struct ud*) ; 
 int FUNC3 (struct ud*) ; 
 int /*<<< orphan*/  FUNC4 (struct ud*) ; 
 TYPE_2__* ud_itab ; 
 int /*<<< orphan*/ * ud_lookup_table_list ; 

unsigned int
FUNC5(struct ud *u)
{
  FUNC4(u);
  FUNC1(u);
  u->le = &ud_lookup_table_list[0];
  u->error = FUNC3(u) == -1 || 
             FUNC2(u)   == -1 ||
             u->error;
  /* Handle decode error. */
  if (u->error) {
    /* clear out the decode data. */
    FUNC1(u);
    /* mark the sequence of bytes as invalid. */
    u->itab_entry = &ud_itab[0]; /* entry 0 is invalid */
    u->mnemonic = u->itab_entry->mnemonic;
  } 

    /* maybe this stray segment override byte
     * should be spewed out?
     */
    if ( !FUNC0( u->itab_entry->prefix ) && 
            u->operand[0].type != UD_OP_MEM &&
            u->operand[1].type != UD_OP_MEM )
        u->pfx_seg = 0;

  u->insn_offset = u->pc; /* set offset of instruction */
  u->asm_buf_fill = 0;   /* set translation buffer index to 0 */
  u->pc += u->inp_ctr;    /* move program counter by bytes decoded */

  /* return number of bytes disassembled. */
  return u->inp_ctr;
}
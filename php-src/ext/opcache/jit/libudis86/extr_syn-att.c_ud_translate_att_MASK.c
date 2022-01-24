#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ud {int dis_mode; int mnemonic; TYPE_3__* operand; int /*<<< orphan*/  br_far; scalar_t__ pfx_repne; scalar_t__ pfx_repe; scalar_t__ pfx_rep; scalar_t__ pfx_lock; scalar_t__ pfx_adr; TYPE_1__* itab_entry; scalar_t__ pfx_opr; } ;
struct TYPE_5__ {int /*<<< orphan*/  ubyte; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_2__ lval; } ;
struct TYPE_4__ {int /*<<< orphan*/  prefix; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  UD_Ibound 133 
#define  UD_Icall 132 
#define  UD_Idb 131 
#define  UD_Ienter 130 
#define  UD_Ijmp 129 
#define  UD_Iretf 128 
 scalar_t__ UD_NONE ; 
 scalar_t__ UD_OP_REG ; 
 int /*<<< orphan*/  FUNC2 (struct ud*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (struct ud*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

extern void 
FUNC5(struct ud *u)
{
  int size = 0;
  int star = 0;

  /* check if P_OSO prefix is used */
  if (! FUNC1(u->itab_entry->prefix) && u->pfx_opr) {
  switch (u->dis_mode) {
    case 16: 
      FUNC3(u, "o32 ");
      break;
    case 32:
    case 64:
      FUNC3(u, "o16 ");
      break;
  }
  }

  /* check if P_ASO prefix was used */
  if (! FUNC0(u->itab_entry->prefix) && u->pfx_adr) {
  switch (u->dis_mode) {
    case 16: 
      FUNC3(u, "a32 ");
      break;
    case 32:
      FUNC3(u, "a16 ");
      break;
    case 64:
      FUNC3(u, "a32 ");
      break;
  }
  }

  if (u->pfx_lock)
    FUNC3(u,  "lock ");
  if (u->pfx_rep) {
    FUNC3(u, "rep ");
  } else if (u->pfx_repe) {
    FUNC3(u, "repe ");
  } else if (u->pfx_repne) {
    FUNC3(u, "repne ");
  }

  /* special instructions */
  switch (u->mnemonic) {
  case UD_Iretf: 
    FUNC3(u, "lret "); 
    break;
  case UD_Idb:
    FUNC3(u, ".byte 0x%x", u->operand[0].lval.ubyte);
    return;
  case UD_Ijmp:
  case UD_Icall:
    if (u->br_far) FUNC3(u,  "l");
        if (u->operand[0].type == UD_OP_REG) {
          star = 1;
        }
    FUNC3(u, "%s", FUNC4(u->mnemonic));
    break;
  case UD_Ibound:
  case UD_Ienter:
    if (u->operand[0].type != UD_NONE)
      FUNC2(u, &u->operand[0]);
    if (u->operand[1].type != UD_NONE) {
      FUNC3(u, ",");
      FUNC2(u, &u->operand[1]);
    }
    return;
  default:
    FUNC3(u, "%s", FUNC4(u->mnemonic));
  }

  if (size == 8) {
    FUNC3(u, "b");
  } else if (size == 16) {
    FUNC3(u, "w");
  } else if (size == 64) {
    FUNC3(u, "q");
  }

  if (star) {
    FUNC3(u, " *");
  } else {
    FUNC3(u, " ");
  }

  if (u->operand[3].type != UD_NONE) {
    FUNC2(u, &u->operand[3]);
    FUNC3(u, ", ");
  }
  if (u->operand[2].type != UD_NONE) {
    FUNC2(u, &u->operand[2]);
    FUNC3(u, ", ");
  }
  if (u->operand[1].type != UD_NONE) {
    FUNC2(u, &u->operand[1]);
    FUNC3(u, ", ");
  }
  if (u->operand[0].type != UD_NONE) {
    FUNC2(u, &u->operand[0]);
  }
}
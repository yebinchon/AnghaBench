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
typedef  size_t uint8_t ;
typedef  int uint16_t ;
struct ud {int dis_mode; TYPE_1__* le; int /*<<< orphan*/  vendor; int /*<<< orphan*/  pfx_adr; int /*<<< orphan*/  pfx_opr; int /*<<< orphan*/  pfx_rex; } ;
struct TYPE_2__ {int type; int* table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int UD_TAB__OPC_3DNOW ; 
#define  UD_TAB__OPC_ASIZE 140 
#define  UD_TAB__OPC_MOD 139 
#define  UD_TAB__OPC_MODE 138 
#define  UD_TAB__OPC_OSIZE 137 
#define  UD_TAB__OPC_REG 136 
#define  UD_TAB__OPC_RM 135 
#define  UD_TAB__OPC_SSE 134 
#define  UD_TAB__OPC_TABLE 133 
#define  UD_TAB__OPC_VENDOR 132 
#define  UD_TAB__OPC_VEX 131 
#define  UD_TAB__OPC_VEX_L 130 
#define  UD_TAB__OPC_VEX_W 129 
#define  UD_TAB__OPC_X87 128 
 int /*<<< orphan*/  UD_VENDOR_AMD ; 
 int /*<<< orphan*/  UD_VENDOR_ANY ; 
 int FUNC5 (struct ud*) ; 
 int FUNC6 (struct ud*,int) ; 
 int FUNC7 (struct ud*) ; 
 int FUNC8 (struct ud*) ; 
 int FUNC9 (struct ud*) ; 
 int FUNC10 (int,int /*<<< orphan*/ ) ; 
 int FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ud*) ; 
 int /*<<< orphan*/  FUNC13 (struct ud*) ; 
 TYPE_1__* ud_lookup_table_list ; 
 size_t FUNC14 (struct ud*) ; 
 size_t FUNC15 (struct ud*) ; 

__attribute__((used)) static int
FUNC16(struct ud *u, uint16_t ptr)
{
  uint8_t idx = 0;
  if ((ptr & 0x8000) == 0) {
    return FUNC6(u, ptr); 
  }
  u->le = &ud_lookup_table_list[(~0x8000 & ptr)];
  if (u->le->type == UD_TAB__OPC_3DNOW) {
    return FUNC5(u);
  }

  switch (u->le->type) {
    case UD_TAB__OPC_MOD:
      /* !11 = 0, 11 = 1 */
      idx = (FUNC0(FUNC13(u)) + 1) / 4;
      break;
      /* disassembly mode/operand size/address size based tables.
       * 16 = 0,, 32 = 1, 64 = 2
       */
    case UD_TAB__OPC_MODE:
      idx = u->dis_mode != 64 ? 0 : 1;
      break;
    case UD_TAB__OPC_OSIZE:
      idx = FUNC11(u->dis_mode, FUNC3(u->pfx_rex), u->pfx_opr) / 32;
      break;
    case UD_TAB__OPC_ASIZE:
      idx = FUNC10(u->dis_mode, u->pfx_adr) / 32;
      break;
    case UD_TAB__OPC_X87:
      idx = FUNC13(u) - 0xC0;
      break;
    case UD_TAB__OPC_VENDOR:
      if (u->vendor == UD_VENDOR_ANY) {
        /* choose a valid entry */
        idx = (u->le->table[idx] != 0) ? 0 : 1;
      } else if (u->vendor == UD_VENDOR_AMD) {
        idx = 0;
      } else {
        idx = 1;
      }
      break;
    case UD_TAB__OPC_RM:
      idx = FUNC2(FUNC13(u));
      break;
    case UD_TAB__OPC_REG:
      idx = FUNC1(FUNC13(u));
      break;
    case UD_TAB__OPC_SSE:
      return FUNC8(u);
    case UD_TAB__OPC_VEX:
      return FUNC9(u);
    case UD_TAB__OPC_VEX_W:
      idx = FUNC15(u);
      break;
    case UD_TAB__OPC_VEX_L:
      idx = FUNC14(u);
      break;
    case UD_TAB__OPC_TABLE:
      FUNC12(u);
      return FUNC7(u);
    default:
      FUNC4(!"not reached");
      break;
  }

  return FUNC16(u, u->le->table[idx]);
}
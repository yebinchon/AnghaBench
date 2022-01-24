#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {scalar_t__ type; TYPE_1__* key; } ;
struct TYPE_18__ {int need_locale; int /*<<< orphan*/  flag; int /*<<< orphan*/  lsign; scalar_t__ pre; scalar_t__ pre_lsign_num; scalar_t__ post; scalar_t__ zero_end; int /*<<< orphan*/  zero_start; int /*<<< orphan*/  multi; } ;
struct TYPE_17__ {int id; } ;
typedef  TYPE_2__ NUMDesc ;
typedef  TYPE_3__ FormatNode ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 scalar_t__ NODE_TYPE_ACTION ; 
#define  NUM_0 144 
#define  NUM_9 143 
#define  NUM_B 142 
#define  NUM_D 141 
#define  NUM_DEC 140 
#define  NUM_E 139 
#define  NUM_FM 138 
 int /*<<< orphan*/  NUM_F_BLANK ; 
 int /*<<< orphan*/  NUM_F_BRACKET ; 
 int /*<<< orphan*/  NUM_F_DECIMAL ; 
 int /*<<< orphan*/  NUM_F_EEEE ; 
 int /*<<< orphan*/  NUM_F_FILLMODE ; 
 int /*<<< orphan*/  NUM_F_LDECIMAL ; 
 int /*<<< orphan*/  NUM_F_LSIGN ; 
 int /*<<< orphan*/  NUM_F_MINUS ; 
 int /*<<< orphan*/  NUM_F_MINUS_POST ; 
 int /*<<< orphan*/  NUM_F_MULTI ; 
 int /*<<< orphan*/  NUM_F_PLUS ; 
 int /*<<< orphan*/  NUM_F_PLUS_POST ; 
 int /*<<< orphan*/  NUM_F_ROMAN ; 
 int /*<<< orphan*/  NUM_F_ZERO ; 
#define  NUM_G 137 
#define  NUM_L 136 
 int /*<<< orphan*/  NUM_LSIGN_NONE ; 
 int /*<<< orphan*/  NUM_LSIGN_POST ; 
 int /*<<< orphan*/  NUM_LSIGN_PRE ; 
#define  NUM_MI 135 
#define  NUM_PL 134 
#define  NUM_PR 133 
#define  NUM_RN 132 
#define  NUM_S 131 
#define  NUM_SG 130 
#define  NUM_V 129 
#define  NUM_rn 128 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static void
FUNC15(NUMDesc *num, FormatNode *n)
{
	if (n->type != NODE_TYPE_ACTION)
		return;

	if (FUNC3(num) && n->key->id != NUM_E)
		FUNC11(ERROR,
				(FUNC12(ERRCODE_SYNTAX_ERROR),
				 FUNC14("\"EEEE\" must be the last pattern used")));

	switch (n->key->id)
	{
		case NUM_9:
			if (FUNC1(num))
				FUNC11(ERROR,
						(FUNC12(ERRCODE_SYNTAX_ERROR),
						 FUNC14("\"9\" must be ahead of \"PR\"")));
			if (FUNC7(num))
			{
				++num->multi;
				break;
			}
			if (FUNC2(num))
				++num->post;
			else
				++num->pre;
			break;

		case NUM_0:
			if (FUNC1(num))
				FUNC11(ERROR,
						(FUNC12(ERRCODE_SYNTAX_ERROR),
						 FUNC14("\"0\" must be ahead of \"PR\"")));
			if (!FUNC10(num) && !FUNC2(num))
			{
				num->flag |= NUM_F_ZERO;
				num->zero_start = num->pre + 1;
			}
			if (!FUNC2(num))
				++num->pre;
			else
				++num->post;

			num->zero_end = num->pre + num->post;
			break;

		case NUM_B:
			if (num->pre == 0 && num->post == 0 && (!FUNC10(num)))
				num->flag |= NUM_F_BLANK;
			break;

		case NUM_D:
			num->flag |= NUM_F_LDECIMAL;
			num->need_locale = true;
			/* FALLTHROUGH */
		case NUM_DEC:
			if (FUNC2(num))
				FUNC11(ERROR,
						(FUNC12(ERRCODE_SYNTAX_ERROR),
						 FUNC14("multiple decimal points")));
			if (FUNC7(num))
				FUNC11(ERROR,
						(FUNC12(ERRCODE_SYNTAX_ERROR),
						 FUNC14("cannot use \"V\" and decimal point together")));
			num->flag |= NUM_F_DECIMAL;
			break;

		case NUM_FM:
			num->flag |= NUM_F_FILLMODE;
			break;

		case NUM_S:
			if (FUNC5(num))
				FUNC11(ERROR,
						(FUNC12(ERRCODE_SYNTAX_ERROR),
						 FUNC14("cannot use \"S\" twice")));
			if (FUNC8(num) || FUNC6(num) || FUNC1(num))
				FUNC11(ERROR,
						(FUNC12(ERRCODE_SYNTAX_ERROR),
						 FUNC14("cannot use \"S\" and \"PL\"/\"MI\"/\"SG\"/\"PR\" together")));
			if (!FUNC2(num))
			{
				num->lsign = NUM_LSIGN_PRE;
				num->pre_lsign_num = num->pre;
				num->need_locale = true;
				num->flag |= NUM_F_LSIGN;
			}
			else if (num->lsign == NUM_LSIGN_NONE)
			{
				num->lsign = NUM_LSIGN_POST;
				num->need_locale = true;
				num->flag |= NUM_F_LSIGN;
			}
			break;

		case NUM_MI:
			if (FUNC5(num))
				FUNC11(ERROR,
						(FUNC12(ERRCODE_SYNTAX_ERROR),
						 FUNC14("cannot use \"S\" and \"MI\" together")));
			num->flag |= NUM_F_MINUS;
			if (FUNC2(num))
				num->flag |= NUM_F_MINUS_POST;
			break;

		case NUM_PL:
			if (FUNC5(num))
				FUNC11(ERROR,
						(FUNC12(ERRCODE_SYNTAX_ERROR),
						 FUNC14("cannot use \"S\" and \"PL\" together")));
			num->flag |= NUM_F_PLUS;
			if (FUNC2(num))
				num->flag |= NUM_F_PLUS_POST;
			break;

		case NUM_SG:
			if (FUNC5(num))
				FUNC11(ERROR,
						(FUNC12(ERRCODE_SYNTAX_ERROR),
						 FUNC14("cannot use \"S\" and \"SG\" together")));
			num->flag |= NUM_F_MINUS;
			num->flag |= NUM_F_PLUS;
			break;

		case NUM_PR:
			if (FUNC5(num) || FUNC8(num) || FUNC6(num))
				FUNC11(ERROR,
						(FUNC12(ERRCODE_SYNTAX_ERROR),
						 FUNC14("cannot use \"PR\" and \"S\"/\"PL\"/\"MI\"/\"SG\" together")));
			num->flag |= NUM_F_BRACKET;
			break;

		case NUM_rn:
		case NUM_RN:
			num->flag |= NUM_F_ROMAN;
			break;

		case NUM_L:
		case NUM_G:
			num->need_locale = true;
			break;

		case NUM_V:
			if (FUNC2(num))
				FUNC11(ERROR,
						(FUNC12(ERRCODE_SYNTAX_ERROR),
						 FUNC14("cannot use \"V\" and decimal point together")));
			num->flag |= NUM_F_MULTI;
			break;

		case NUM_E:
			if (FUNC3(num))
				FUNC11(ERROR,
						(FUNC12(ERRCODE_SYNTAX_ERROR),
						 FUNC14("cannot use \"EEEE\" twice")));
			if (FUNC0(num) || FUNC4(num) || FUNC5(num) ||
				FUNC1(num) || FUNC6(num) || FUNC8(num) ||
				FUNC9(num) || FUNC7(num))
				FUNC11(ERROR,
						(FUNC12(ERRCODE_SYNTAX_ERROR),
						 FUNC14("\"EEEE\" is incompatible with other formats"),
						 FUNC13("\"EEEE\" may only be used together with digit and decimal point patterns.")));
			num->flag |= NUM_F_EEEE;
			break;
	}
}
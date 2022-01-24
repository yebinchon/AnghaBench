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
typedef  scalar_t__ colnr_T ;
struct TYPE_3__ {scalar_t__ col; } ;
struct TYPE_4__ {TYPE_1__ w_cursor; } ;

/* Variables and functions */
 int ALEF ; 
#define  ALEF_ 138 
 int ALEF_U_H ; 
#define  ALEF_U_H_ 137 
 int AYN ; 
#define  AYN_ 136 
 int GHAYN ; 
#define  GHAYN_ 135 
 int IE ; 
#define  IE_ 134 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int TEE ; 
#define  TEE_ 133 
 int YE ; 
 int YEE ; 
#define  YEE_ 132 
#define  YE_ 131 
 int _AYN ; 
#define  _AYN_ 130 
 int _GHAYN ; 
#define  _GHAYN_ 129 
 int _HE ; 
#define  _HE_ 128 
 TYPE_2__* curwin ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ p_ri ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6 ()
{
    int	tempc;

    if (curwin->w_cursor.col != 0 &&
	(curwin->w_cursor.col + 1 == (colnr_T)FUNC0(FUNC4())))
	return;

    if (!curwin->w_cursor.col && p_ri)
	return;

    if (p_ri)
	FUNC1();
    else
	FUNC3();

    switch (FUNC2())
    {
	case ALEF_:
		tempc = ALEF;
		break;
	case ALEF_U_H_:
		tempc = ALEF_U_H;
		break;
	case _AYN_:
		tempc = _AYN;
		break;
	case AYN_:
		tempc = AYN;
		break;
	case _GHAYN_:
		tempc = _GHAYN;
		break;
	case GHAYN_:
		tempc = GHAYN;
		break;
	case _HE_:
		tempc = _HE;
		break;
	case YE_:
		tempc = YE;
		break;
	case IE_:
		tempc = IE;
		break;
	case TEE_:
		tempc = TEE;
		break;
	case YEE_:
		tempc = YEE;
		break;
	default:
		tempc = 0;
    }

    if (tempc)
	FUNC5(tempc);

    if (p_ri)
	FUNC3();
    else
	FUNC1();
}
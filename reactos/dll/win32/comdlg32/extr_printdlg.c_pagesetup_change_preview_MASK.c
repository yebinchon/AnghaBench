#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int right; int left; int bottom; int top; } ;
struct TYPE_9__ {int /*<<< orphan*/  hDlg; TYPE_2__ rtDrawRect; } ;
typedef  TYPE_1__ pagesetup_data ;
struct TYPE_11__ {int y; int x; } ;
typedef  TYPE_2__ RECT ;
typedef  int LONG ;

/* Variables and functions */
 scalar_t__ DMORIENT_LANDSCAPE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int const,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC4 (TYPE_1__ const*) ; 
 TYPE_4__* FUNC5 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  rct1 ; 
 int /*<<< orphan*/  rct2 ; 
 int /*<<< orphan*/  rct3 ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC7(const pagesetup_data *data)
{
    LONG width, height, x, y;
    RECT tmp;
    const int shadow = 4;

    if(FUNC4(data) == DMORIENT_LANDSCAPE)
    {
        width  = data->rtDrawRect.right - data->rtDrawRect.left;
        height = FUNC5(data)->y * width / FUNC5(data)->x;
    }
    else
    {
        height = data->rtDrawRect.bottom - data->rtDrawRect.top;
        width  = FUNC5(data)->x * height / FUNC5(data)->y;
    }
    x = (data->rtDrawRect.right + data->rtDrawRect.left - width) / 2;
    y = (data->rtDrawRect.bottom + data->rtDrawRect.top - height) / 2;
    FUNC3("draw rect %s x=%d, y=%d, w=%d, h=%d\n",
          FUNC6(&data->rtDrawRect), x, y, width, height);

    FUNC2(FUNC0(data->hDlg, rct2), x + width, y + shadow, shadow, height, FALSE);
    FUNC2(FUNC0(data->hDlg, rct3), x + shadow, y + height, width, shadow, FALSE);
    FUNC2(FUNC0(data->hDlg, rct1), x, y, width, height, FALSE);

    tmp = data->rtDrawRect;
    tmp.right  += shadow;
    tmp.bottom += shadow;
    FUNC1(data->hDlg, &tmp, TRUE);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WCHAR ;
struct TYPE_5__ {int style; scalar_t__ password_char; int /*<<< orphan*/  hwndSelf; } ;
typedef  int LONG ;
typedef  TYPE_1__ EDITSTATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int ES_MULTILINE ; 
 int ES_PASSWORD ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static void FUNC4(EDITSTATE *es, WCHAR c)
{
	LONG style;

	if (es->style & ES_MULTILINE)
		return;

	if (es->password_char == c)
		return;

        style = FUNC2( es->hwndSelf, GWL_STYLE );
	es->password_char = c;
	if (c) {
            FUNC3( es->hwndSelf, GWL_STYLE, style | ES_PASSWORD );
            es->style |= ES_PASSWORD;
	} else {
            FUNC3( es->hwndSelf, GWL_STYLE, style & ~ES_PASSWORD );
            es->style &= ~ES_PASSWORD;
	}
	FUNC0(es);
	FUNC1(es, NULL, TRUE);
}
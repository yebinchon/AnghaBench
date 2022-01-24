#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {scalar_t__ text; int /*<<< orphan*/  hwndSelf; int /*<<< orphan*/  selection_end; int /*<<< orphan*/  selection_start; } ;
typedef  scalar_t__* LPWSTR ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  HGLOBAL ;
typedef  TYPE_1__ EDITSTATE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CF_UNICODETEXT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int GMEM_DDESHARE ; 
 int GMEM_MOVEABLE ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 scalar_t__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,scalar_t__,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(EDITSTATE *es)
{
	INT s = FUNC11(es->selection_start, es->selection_end);
	INT e = FUNC9(es->selection_start, es->selection_end);
	HGLOBAL hdst;
	LPWSTR dst;
	DWORD len;

	if (e == s) return;

	len = e - s;
	hdst = FUNC2(GMEM_MOVEABLE | GMEM_DDESHARE, (len + 1) * sizeof(WCHAR));
	dst = FUNC3(hdst);
	FUNC10(dst, es->text + s, len * sizeof(WCHAR));
	dst[len] = 0; /* ensure 0 termination */
	FUNC7("%s\n", FUNC8(dst));
	FUNC4(hdst);
	FUNC5(es->hwndSelf);
	FUNC1();
	FUNC6(CF_UNICODETEXT, hdst);
	FUNC0();
}
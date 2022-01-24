#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_5__ {int /*<<< orphan*/  bound; scalar_t__ text; } ;
struct TYPE_4__ {scalar_t__ numParts; int /*<<< orphan*/  Self; TYPE_2__* parts; } ;
typedef  TYPE_1__ STATUS_INFO ;
typedef  TYPE_2__ STATUSWINDOWPART ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  scalar_t__ LPCSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL
FUNC6 (const STATUS_INFO *infoPtr, LPCSTR text)
{
    STATUSWINDOWPART *part;
    int len;

    FUNC3("\n");
    if (infoPtr->numParts == 0)
	return FALSE;

    part = &infoPtr->parts[0];
    /* duplicate string */
    FUNC1 (part->text);
    part->text = 0;

    if (text && (len = FUNC5((LPCWSTR)text))) {
        part->text = FUNC0 ((len+1)*sizeof(WCHAR));
        if (!part->text) return FALSE;
        FUNC4 (part->text, (LPCWSTR)text);
    }

    FUNC2(infoPtr->Self, &part->bound, FALSE);

    return TRUE;
}
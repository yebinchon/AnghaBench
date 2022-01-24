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
struct TYPE_5__ {int style; scalar_t__ text; } ;
struct TYPE_4__ {size_t numParts; TYPE_2__* parts; TYPE_2__ part0; scalar_t__ simple; } ;
typedef  TYPE_1__ STATUS_INFO ;
typedef  TYPE_2__ STATUSWINDOWPART ;
typedef  scalar_t__ LRESULT ;
typedef  int /*<<< orphan*/ * LPSTR ;
typedef  size_t INT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int SBT_OWNERDRAW ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static LRESULT
FUNC3 (STATUS_INFO *infoPtr, INT nPart, LPSTR buf)
{
    STATUSWINDOWPART *part;
    LRESULT result;

    FUNC1("part %d\n", nPart);

    /* MSDN says: "simple parts use index of 0", so this check is ok. */
    if (nPart < 0 || nPart >= infoPtr->numParts) return 0;

    if (infoPtr->simple)
	part = &infoPtr->part0;
    else
	part = &infoPtr->parts[nPart];

    if (part->style & SBT_OWNERDRAW)
	result = (LRESULT)part->text;
    else {
        DWORD len = part->text ? FUNC2( CP_ACP, 0, part->text, -1,
                                                      NULL, 0, NULL, NULL ) - 1 : 0;
        result = FUNC0( len, part->style );
        if (part->text && buf)
            FUNC2( CP_ACP, 0, part->text, -1, buf, len+1, NULL, NULL );
    }
    return result;
}
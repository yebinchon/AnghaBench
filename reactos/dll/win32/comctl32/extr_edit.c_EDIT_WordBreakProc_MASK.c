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
struct TYPE_11__ {int fWhiteSpace; int /*<<< orphan*/  fSoftBreak; } ;
struct TYPE_10__ {TYPE_4__* logAttr; int /*<<< orphan*/  text; } ;
struct TYPE_9__ {int /*<<< orphan*/  eScript; } ;
typedef  int /*<<< orphan*/  SCRIPT_LOGATTR ;
typedef  TYPE_1__ SCRIPT_ANALYSIS ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int INT ;
typedef  TYPE_2__ EDITSTATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SCRIPT_UNDEFINED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,TYPE_1__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int,int,int) ; 
#define  WB_ISDELIMITER 130 
#define  WB_LEFT 129 
#define  WB_RIGHT 128 
 int FUNC3 (TYPE_2__*) ; 
 TYPE_4__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static INT FUNC6(EDITSTATE *es, LPWSTR s, INT index, INT count, INT action)
{
    INT ret = 0;

    FUNC2("s=%p, index=%d, count=%d, action=%d\n", s, index, count, action);

    if(!s) return 0;

    if (!es->logAttr)
    {
        SCRIPT_ANALYSIS psa;

        FUNC5(&psa,0,sizeof(SCRIPT_ANALYSIS));
        psa.eScript = SCRIPT_UNDEFINED;

        es->logAttr = FUNC4(sizeof(SCRIPT_LOGATTR) * FUNC3(es));
        FUNC1(es->text, FUNC3(es), &psa, es->logAttr);
    }

    switch (action) {
    case WB_LEFT:
        if (index)
            index--;
        while (index && !es->logAttr[index].fSoftBreak)
            index--;
        ret = index;
        break;
    case WB_RIGHT:
        if (!count)
            break;
        while (index < count && s[index] && !es->logAttr[index].fSoftBreak)
            index++;
        ret = index;
        break;
    case WB_ISDELIMITER:
        ret = es->logAttr[index].fWhiteSpace;
        break;
    default:
        FUNC0("unknown action code, please report !\n");
        break;
    }
    return ret;
}
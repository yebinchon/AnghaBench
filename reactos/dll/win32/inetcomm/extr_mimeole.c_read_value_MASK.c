#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* pszVal; } ;
struct TYPE_9__ {TYPE_2__ u; int /*<<< orphan*/  vt; } ;
struct TYPE_10__ {TYPE_3__ value; TYPE_1__* prop; } ;
typedef  TYPE_4__ header_t ;
struct TYPE_7__ {int flags; } ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int MPF_HASPARAMS ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VT_LPSTR ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char*) ; 
 char* FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

__attribute__((used)) static void FUNC8(header_t *header, char **cur)
{
    char *end = *cur, *value;
    DWORD len;

    do {
        end = FUNC6(end, "\r\n");
        end += 2;
    } while(*end == ' ' || *end == '\t');

    len = end - *cur;
    value = FUNC1(FUNC0(), 0, len + 1);
    FUNC4(value, *cur, len);
    value[len] = '\0';

    FUNC7(value, len);
    FUNC2("value %s\n", FUNC3(value));

    if(header->prop->flags & MPF_HASPARAMS)
    {
        FUNC5(header, value);
        FUNC2("value w/o params %s\n", FUNC3(value));
    }

    header->value.vt = VT_LPSTR;
    header->value.u.pszVal = value;

    *cur = end;
}
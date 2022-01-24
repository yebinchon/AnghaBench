#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  scanner_t ;
typedef  int /*<<< orphan*/  json_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/ * FUNC2 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,size_t*,int*) ; 
 char FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static json_t *FUNC7(scanner_t *s, va_list *ap)
{
    char *str;
    size_t len;
    int ours;
    int nullable;

    FUNC3(s);
    nullable = FUNC6(s) == '?';
    if (!nullable)
        FUNC4(s);

    str = FUNC5(s, ap, "string", &len, &ours);
    if (!str) {
        return nullable ? FUNC0() : NULL;
    } else if (ours) {
        return FUNC2(str, len);
    } else {
        return FUNC1(str, len);
    }
}
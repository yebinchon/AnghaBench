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
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 char FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static json_t *FUNC7(scanner_t *s, va_list *ap)
{
    json_t *array = FUNC0();
    FUNC3(s);

    while(FUNC6(s) != ']') {
        json_t *value;

        if(!FUNC6(s)) {
            FUNC5(s, "<format>", "Unexpected end of format string");
            goto error;
        }

        value = FUNC4(s, ap);
        if(!value)
            goto error;

        if(FUNC1(array, value)) {
            FUNC5(s, "<internal>", "Unable to append to array");
            goto error;
        }

        FUNC3(s);
    }
    return array;

error:
    FUNC2(array);
    return NULL;
}
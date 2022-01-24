#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  va_list ;
struct TYPE_7__ {int flags; } ;
typedef  TYPE_1__ scanner_t ;
typedef  int /*<<< orphan*/  json_t ;

/* Variables and functions */
 int JSON_STRICT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,long) ; 
 long FUNC6 (TYPE_1__*) ; 
 long FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  unpack_value_starters ; 

__attribute__((used)) static int FUNC9(scanner_t *s, json_t *root, va_list *ap)
{
    size_t i = 0;
    int strict = 0;

    if(root && !FUNC2(root)) {
        FUNC4(s, "<validation>", "Expected array, got %s", FUNC7(root));
        return -1;
    }
    FUNC3(s);

    while(FUNC6(s) != ']') {
        json_t *value;

        if(strict != 0) {
            FUNC4(s, "<format>", "Expected ']' after '%c', got '%c'",
                      (strict == 1 ? '!' : '*'),
                      FUNC6(s));
            return -1;
        }

        if(!FUNC6(s)) {
            FUNC4(s, "<format>", "Unexpected end of format string");
            return -1;
        }

        if(FUNC6(s) == '!' || FUNC6(s) == '*') {
            strict = (FUNC6(s) == '!' ? 1 : -1);
            FUNC3(s);
            continue;
        }

        if(!FUNC5(unpack_value_starters, FUNC6(s))) {
            FUNC4(s, "<format>", "Unexpected format character '%c'",
                      FUNC6(s));
            return -1;
        }

        if(!root) {
            /* skipping */
            value = NULL;
        }
        else {
            value = FUNC0(root, i);
            if(!value) {
                FUNC4(s, "<validation>", "Array index %lu out of range",
                          (unsigned long)i);
                return -1;
            }
        }

        if(FUNC8(s, value, ap))
            return -1;

        FUNC3(s);
        i++;
    }

    if(strict == 0 && (s->flags & JSON_STRICT))
        strict = 1;

    if(root && strict == 1 && i != FUNC1(root)) {
        long diff = (long)FUNC1(root) - (long)i;
        FUNC4(s, "<validation>", "%li array item(s) left unpacked", diff);
        return -1;
    }

    return 0;
}
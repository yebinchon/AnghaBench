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
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (char const) ; 
 scalar_t__ FUNC3 (char const) ; 
 scalar_t__ FUNC4 (char const) ; 
 scalar_t__ FUNC5 (char const) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC6 (char const) ; 

__attribute__((used)) static uint64_t
FUNC7(const char *value)
{
    uint64_t num = 0;
    unsigned is_negative = 0;

    while (*value == '-') {
        is_negative = 1;
        value++;
    }

    while (FUNC3(value[0]&0xFF)) {
        num = num*10 + (value[0] - '0');
        value++;
    }
    while (FUNC4(value[0]) || FUNC5(value[0]))
        value++;

    if (FUNC2(value[0]) && num == 0)
        num = 1;

    if (value[0] == '\0')
        return num;

    switch (FUNC6(value[0])) {
    case 's':
        num *= 1;
        break;
    case 'm':
        num *= 60;
        break;
    case 'h':
        num *= 60*60;
        break;
    case 'd':
        num *= 24*60*60;
        break;
    case 'w':
        num *= 24*60*60*7;
        break;
    default:
        FUNC1(stderr, "--rotate-offset: unknown character\n");
        FUNC0(1);
    }
    if (num >= 24*60*60) {
        FUNC1(stderr, "--rotate-offset: value is greater than 1 day\n");
        FUNC0(1);
    }
    if (is_negative)
        num = 24*60*60 - num;

    return num;
}
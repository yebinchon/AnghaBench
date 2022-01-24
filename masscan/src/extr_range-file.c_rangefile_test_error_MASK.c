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
struct RangeParser {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 struct RangeParser* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct RangeParser*) ; 
 int /*<<< orphan*/  FUNC3 (struct RangeParser*,unsigned long long*,unsigned long long*) ; 
 int FUNC4 (struct RangeParser*,unsigned char const*,size_t*,size_t,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  stderr ; 
 size_t FUNC5 (char const*) ; 

__attribute__((used)) static int
FUNC6(const char *buf, unsigned long long in_line_number, unsigned long long in_char_number, unsigned which_test)
{
    size_t length = FUNC5(buf);
    size_t offset = 0;
    struct RangeParser *p;
    unsigned out_begin = 0xa3a3a3a3;
    unsigned out_end  = 0xa3a3a3a3;
    unsigned long long out_line_number;
    unsigned long long out_char_number;
    int x;
    bool is_found = false;

    /* test the entire buffer */
    p = FUNC1();
    x = FUNC4(p, (const unsigned char *)buf, &offset, length, &out_begin, &out_end);
    if (!(x < 0))
        goto fail;
    FUNC3(p, &out_line_number, &out_char_number);
    FUNC2(p);
    if (in_line_number != out_line_number || in_char_number != out_char_number)
        goto fail;

    /* test one byte at a time */
    p = FUNC1();
    offset = 0;
    out_begin = 0xa3a3a3a3;
    out_end  = 0xa3a3a3a3;
    is_found = false;
    while (offset < length) {
        x = FUNC4(p, (const unsigned char *)buf, &offset, length, &out_begin, &out_end);
        if (x == 0 || x > 1)
            continue;
        is_found = true;
        FUNC3(p, &out_line_number, &out_char_number);
        if (in_line_number != out_line_number || in_char_number != out_char_number)
            goto fail;
        else
            break;
    }
    FUNC2(p);
    if (!is_found)
        goto fail;

    return 0;
fail:
    FUNC0(stderr, "[-] rangefile test fail, line=%u\n", which_test);
    return 1;
}
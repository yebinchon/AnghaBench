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
 struct RangeParser* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct RangeParser*) ; 
 int FUNC2 (struct RangeParser*,unsigned char const*,size_t*,size_t,unsigned int*,unsigned int*) ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static int
FUNC4(const char *buf, unsigned in_begin, unsigned in_end)
{
    size_t length = FUNC3(buf);
    size_t offset = 0;
    struct RangeParser *p;
    unsigned out_begin = 0xa3a3a3a3;
    unsigned out_end  = 0xa3a3a3a3;
    int x;
    bool is_found = false;

    /* test the entire buffer */
    p = FUNC0();
    x = FUNC2(p, (const unsigned char *)buf, &offset, length, &out_begin, &out_end);
    if (x != 1)
        return 1; /*fail*/
    if (in_begin != out_begin || in_end != out_end)
        return 1; /*fail*/
    FUNC1(p);

    /* test one byte at a time */
    p = FUNC0();
    offset = 0;
    out_begin = 0xa3a3a3a3;
    out_end  = 0xa3a3a3a3;
    is_found = false;
    while (offset < length) {
        x = FUNC2(p, (const unsigned char *)buf, &offset, length, &out_begin, &out_end);
        if (x == 0)
            continue;
        if (x < 0)
            return 1; /*fail*/
        is_found = true;    
        if (in_begin != out_begin || in_end != out_end)
            return 1; /*fail*/
    }
    FUNC1(p);
    if (!is_found)
        return 1; /*fail*/

    return 0;
}
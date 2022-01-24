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
struct bstr {char* start; int len; } ;

/* Variables and functions */
 struct bstr FUNC0 (struct bstr,int) ; 
 struct bstr FUNC1 (struct bstr,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct bstr,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static struct bstr FUNC4(struct bstr *ptr, char sep, bool modify)
{
    struct bstr str = *ptr;
    struct bstr orig = str;
    for (;;) {
        int idx = sep ? FUNC2(str, sep) : -1;
        if (idx > 0 && str.start[idx - 1] == '\\') {
            if (modify) {
                FUNC3(str.start + idx - 1, str.start + idx, str.len - idx);
                str.len--;
                str = FUNC0(str, idx);
            } else
                str = FUNC0(str, idx + 1);
        } else {
            str = FUNC0(str, idx < 0 ? str.len : idx);
            break;
        }
    }
    *ptr = str;
    return FUNC1(orig, 0, str.start - orig.start);
}
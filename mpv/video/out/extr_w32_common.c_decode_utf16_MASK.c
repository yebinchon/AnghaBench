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
typedef  int wchar_t ;
struct vo_w32_state {int high_surrogate; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct vo_w32_state*,char*) ; 
 int FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct vo_w32_state *w32, wchar_t c)
{
    // Decode UTF-16, keeping state in w32->high_surrogate
    if (FUNC0(c)) {
        w32->high_surrogate = c;
        return 0;
    }
    if (FUNC1(c)) {
        if (!w32->high_surrogate) {
            FUNC2(w32, "Invalid UTF-16 input\n");
            return 0;
        }
        int codepoint = FUNC3(w32->high_surrogate, c);
        w32->high_surrogate = 0;
        return codepoint;
    }
    if (w32->high_surrogate != 0) {
        w32->high_surrogate = 0;
        FUNC2(w32, "Invalid UTF-16 input\n");
        return 0;
    }

    return c;
}
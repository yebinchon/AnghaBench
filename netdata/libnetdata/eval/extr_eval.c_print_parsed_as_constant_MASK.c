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
typedef  int /*<<< orphan*/  calculated_number ;
typedef  int /*<<< orphan*/  BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  CALCULATED_NUMBER_FORMAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC6(BUFFER *out, calculated_number n) {
    if(FUNC5(FUNC2(n))) {
        FUNC0(out, "nan");
        return;
    }

    if(FUNC5(FUNC1(n))) {
        FUNC0(out, "inf");
        return;
    }

    char b[100+1], *s;
    FUNC3(b, 100, CALCULATED_NUMBER_FORMAT, n);

    s = &b[FUNC4(b) - 1];
    while(s > b && *s == '0') {
        *s ='\0';
        s--;
    }

    if(s > b && *s == '.')
        *s = '\0';

    FUNC0(out, b);
}
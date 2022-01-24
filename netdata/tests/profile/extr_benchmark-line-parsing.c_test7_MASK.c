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
struct base {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NUMBER1 ; 
 int /*<<< orphan*/  NUMBER10 ; 
 int /*<<< orphan*/  NUMBER11 ; 
 int /*<<< orphan*/  NUMBER2 ; 
 int /*<<< orphan*/  NUMBER3 ; 
 int /*<<< orphan*/  NUMBER4 ; 
 int /*<<< orphan*/  NUMBER5 ; 
 int /*<<< orphan*/  NUMBER6 ; 
 int /*<<< orphan*/  NUMBER7 ; 
 int /*<<< orphan*/  NUMBER8 ; 
 int /*<<< orphan*/  NUMBER9 ; 
 int /*<<< orphan*/  FUNC0 (struct base*) ; 
 int /*<<< orphan*/  callback ; 
 scalar_t__ FUNC1 (struct base*,scalar_t__) ; 
 struct base* FUNC2 (struct base*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__* strings ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/ * values6 ; 

void FUNC4() {

    static struct base *base = NULL;

    if(FUNC3(!base)) {
        base = FUNC2(base, "cache", NUMBER1, &values6[0], callback);
        base = FUNC2(base, "rss", NUMBER2, &values6[1], callback);
        base = FUNC2(base, "rss_huge", NUMBER3, &values6[2], callback);
        base = FUNC2(base, "mapped_file", NUMBER4, &values6[3], callback);
        base = FUNC2(base, "writeback", NUMBER5, &values6[4], callback);
        base = FUNC2(base, "dirty", NUMBER6, &values6[5], callback);
        base = FUNC2(base, "swap", NUMBER7, &values6[6], callback);
        base = FUNC2(base, "pgpgin", NUMBER8, &values6[7], callback);
        base = FUNC2(base, "pgpgout", NUMBER9, &values6[8], callback);
        base = FUNC2(base, "pgfault", NUMBER10, &values6[9], callback);
        base = FUNC2(base, "pgmajfault", NUMBER11, &values6[10], callback);
    }

    FUNC0(base);

    int i;
    for(i = 0; strings[i] ; i++) {
        if(FUNC1(base, strings[i]))
            break;
    }
}
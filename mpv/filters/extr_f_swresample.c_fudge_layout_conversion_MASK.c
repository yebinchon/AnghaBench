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
struct priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (struct priv*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** fudge_pairs ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint64_t FUNC4(struct priv *p,
                                        uint64_t in, uint64_t out)
{
    for (int n = 0; n < FUNC0(fudge_pairs); n++) {
        uint64_t a = FUNC2(&fudge_pairs[n][0]);
        uint64_t b = FUNC2(&fudge_pairs[n][1]);
        if ((in & a) == a && (in & b) == 0 &&
            (out & a) == 0 && (out & b) == b)
        {
            out = (out & ~b) | a;

            FUNC1(p, "Fudge: %s -> %s\n",
                       FUNC3(&fudge_pairs[n][0]),
                       FUNC3(&fudge_pairs[n][1]));
        }
    }
    return out;
}
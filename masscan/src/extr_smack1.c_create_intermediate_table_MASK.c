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
struct SmackRow {int dummy; } ;
struct SMACK {struct SmackRow* m_state_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct SmackRow*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC4(struct SMACK *smack, unsigned size)
{
    struct SmackRow *x;

    x = (struct SmackRow *)FUNC2(sizeof(*x) * size);
    if (x == NULL) {
        FUNC1(stderr, "%s: out of memory error\n", "smack");
        FUNC0(1);
    }
    FUNC3(x, 0, sizeof(*x) * size);
    smack->m_state_table = x;
}
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
struct priv {int /*<<< orphan*/  se; int /*<<< orphan*/  out_node; int /*<<< orphan*/  script_path; } ;
typedef  int /*<<< orphan*/  VSMap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct priv*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct priv *p, VSMap *vars)
{
    FUNC4(p->se, vars);

    if (FUNC1(&p->se, p->script_path, 0)) {
        FUNC0(p, "Script evaluation failed:\n%s\n", FUNC2(p->se));
        return -1;
    }
    p->out_node = FUNC3(p->se, 0);
    return 0;
}
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
struct parse_state {int error; int /*<<< orphan*/  arg; int /*<<< orphan*/  config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct parse_state*) ; 

__attribute__((used)) static bool FUNC4(struct parse_state *p)
{
    int r = FUNC3(p);
    if (r >= 0)
        return r == 0;
    p->error = true;

    FUNC1(p->config, "Error parsing commandline option %.*s: %s\n",
             FUNC0(p->arg), FUNC2(r));
    return false;
}
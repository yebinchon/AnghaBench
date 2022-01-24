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
struct status_output {int dummy; } ;
struct context {int /*<<< orphan*/  sig; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct context const*,struct status_output*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct status_output*) ; 
 struct status_output* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(const struct context *c)
{
    struct status_output *so = FUNC3(NULL, 0, M_INFO, NULL, 0);
    FUNC0(c, so);
    FUNC2(so);
    FUNC1(c->sig);
}
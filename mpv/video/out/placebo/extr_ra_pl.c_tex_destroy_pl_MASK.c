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
struct ra_tex {int /*<<< orphan*/  priv; } ;
struct ra {int dummy; } ;
struct pl_tex {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ra*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct pl_tex const**) ; 
 int /*<<< orphan*/  FUNC2 (struct ra_tex*) ; 

__attribute__((used)) static void FUNC3(struct ra *ra, struct ra_tex *tex)
{
    if (!tex)
        return;

    FUNC1(FUNC0(ra), (const struct pl_tex **) &tex->priv);
    FUNC2(tex);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct Output {scalar_t__ format; int /*<<< orphan*/  counts; TYPE_1__* funcs; int /*<<< orphan*/  is_virgin_file; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* close ) (struct Output*,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ Output_Redis ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct Output*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct Output *out, FILE *fp)
{
    if (out == NULL)
        return;
    if (fp == NULL)
        return;

    /*
     * Write the format-specific trailers, like </xml>
     */
    if (!out->is_virgin_file)
        out->funcs->close(out, fp);

    FUNC2(&out->counts, 0, sizeof(out->counts));

    /* Redis Kludge*/
    if (out->format == Output_Redis)
        return;

    FUNC1(fp);
    FUNC0(fp);
}
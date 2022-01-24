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
struct scaler {int initialized; int /*<<< orphan*/ * kernel; int /*<<< orphan*/  lut; int /*<<< orphan*/  sep_fbo; } ;
struct gl_video {int /*<<< orphan*/  ra; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct gl_video *p, struct scaler *scaler)
{
    FUNC0(p->ra, &scaler->sep_fbo);
    FUNC0(p->ra, &scaler->lut);
    scaler->kernel = NULL;
    scaler->initialized = false;
}
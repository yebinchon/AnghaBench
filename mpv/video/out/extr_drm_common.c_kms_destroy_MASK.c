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
struct kms {int /*<<< orphan*/  fd; scalar_t__ atomic_context; int /*<<< orphan*/ * encoder; int /*<<< orphan*/ * connector; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct kms*) ; 

void FUNC6(struct kms *kms)
{
    if (!kms)
        return;
    FUNC4(kms->fd, &kms->mode);
    if (kms->connector) {
        FUNC1(kms->connector);
        kms->connector = NULL;
    }
    if (kms->encoder) {
        FUNC2(kms->encoder);
        kms->encoder = NULL;
    }
    if (kms->atomic_context) {
       FUNC3(kms->atomic_context);
    }

    FUNC0(kms->fd);
    FUNC5(kms);
}
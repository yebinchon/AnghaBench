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
struct TYPE_2__ {int /*<<< orphan*/  mode; } ;
struct kms {TYPE_1__ mode; } ;

/* Variables and functions */
 double FUNC0 (int /*<<< orphan*/ *) ; 

double FUNC1(const struct kms *kms)
{
    return FUNC0(&kms->mode.mode);
}
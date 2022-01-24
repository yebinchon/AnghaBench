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
struct mp_archive {scalar_t__ locale; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_archive*) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_archive*) ; 

void FUNC3(struct mp_archive *mpa)
{
    FUNC1(mpa);
    if (mpa && mpa->locale)
        FUNC0(mpa->locale);
    FUNC2(mpa);
}
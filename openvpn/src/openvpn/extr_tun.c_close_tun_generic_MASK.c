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
struct tuntap {scalar_t__ fd; scalar_t__ actual_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tuntap*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void
FUNC3(struct tuntap *tt)
{
    if (tt->fd >= 0)
    {
        FUNC1(tt->fd);
    }
    if (tt->actual_name)
    {
        FUNC2(tt->actual_name);
    }
    FUNC0(tt);
}
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
struct mp_dummy_ {int dummy; } ;
typedef  int /*<<< orphan*/  src ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,struct mp_dummy_**,int) ; 

__attribute__((used)) static void FUNC1(void *ptr, void *val)
{
    struct mp_dummy_ *src = val;
    FUNC0(ptr, &src, sizeof(src));
}
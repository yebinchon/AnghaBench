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
struct ta_header {int dummy; } ;

/* Variables and functions */
 struct ta_header* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct ta_header*) ; 

__attribute__((used)) static struct ta_header *FUNC2(void *ptr)
{
    struct ta_header *h = ptr ? FUNC0(ptr) : NULL;
    FUNC1(h);
    return h;
}
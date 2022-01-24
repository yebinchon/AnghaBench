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
struct ta_header {struct ta_ext_header* ext; } ;
struct TYPE_2__ {struct TYPE_2__* prev; } ;
struct ta_ext_header {TYPE_1__ children; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct ta_header* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(void *ptr)
{
    struct ta_header *h = FUNC1(ptr);
    struct ta_ext_header *eh = h ? h->ext : NULL;
    if (!eh)
        return;
    while (eh->children.prev != &eh->children)
        FUNC2(FUNC0(eh->children.prev));
}
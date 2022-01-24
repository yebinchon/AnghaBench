#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int numrefs; scalar_t__ refs; } ;
typedef  TYPE_1__ ObjectAddresses ;
typedef  int /*<<< orphan*/  ObjectAddress ;

/* Variables and functions */
 int /*<<< orphan*/  object_address_comparator ; 
 int /*<<< orphan*/  FUNC0 (void*,int,int,int /*<<< orphan*/ ) ; 

void
FUNC1(ObjectAddresses *addrs)
{
	if (addrs->numrefs > 1)
		FUNC0((void *) addrs->refs, addrs->numrefs,
			  sizeof(ObjectAddress),
			  object_address_comparator);
}
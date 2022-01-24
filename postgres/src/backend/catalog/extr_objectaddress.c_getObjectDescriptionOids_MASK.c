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
struct TYPE_3__ {scalar_t__ objectSubId; void* objectId; void* classId; } ;
typedef  void* Oid ;
typedef  TYPE_1__ ObjectAddress ;

/* Variables and functions */
 char* FUNC0 (TYPE_1__*) ; 

char *
FUNC1(Oid classid, Oid objid)
{
	ObjectAddress address;

	address.classId = classid;
	address.objectId = objid;
	address.objectSubId = 0;

	return FUNC0(&address);
}
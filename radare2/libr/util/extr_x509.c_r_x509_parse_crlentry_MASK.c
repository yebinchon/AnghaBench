#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int length; TYPE_1__** objects; } ;
struct TYPE_10__ {TYPE_2__ list; } ;
struct TYPE_9__ {int /*<<< orphan*/  revocationDate; int /*<<< orphan*/  userCertificate; } ;
struct TYPE_7__ {int /*<<< orphan*/  length; int /*<<< orphan*/  sector; } ;
typedef  TYPE_3__ RX509CRLEntry ;
typedef  TYPE_4__ RASN1Object ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

RX509CRLEntry *FUNC3 (RASN1Object *object) {
	RX509CRLEntry *entry;
	if (!object || object->list.length != 2) {
		return NULL;
	}
	entry = (RX509CRLEntry *)FUNC0 (sizeof (RX509CRLEntry));
	if (!entry) {
		return NULL;
	}
	entry->userCertificate = FUNC1 (object->list.objects[0]->sector, object->list.objects[0]->length);
	entry->revocationDate = FUNC2 (object->list.objects[1]->sector, object->list.objects[1]->length);
	return entry;
}
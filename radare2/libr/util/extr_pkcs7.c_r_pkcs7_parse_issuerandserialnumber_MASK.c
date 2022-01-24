#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int length; TYPE_3__** objects; } ;
struct TYPE_9__ {int /*<<< orphan*/  length; int /*<<< orphan*/  sector; TYPE_1__ list; } ;
struct TYPE_8__ {int /*<<< orphan*/  serialNumber; int /*<<< orphan*/  issuer; } ;
typedef  TYPE_2__ RPKCS7IssuerAndSerialNumber ;
typedef  TYPE_3__ RASN1Object ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static bool FUNC2(RPKCS7IssuerAndSerialNumber *iasu, RASN1Object *object) {
	if (!iasu || !object || object->list.length != 2) {
		return false;
	}
	FUNC1 (&iasu->issuer, object->list.objects[0]);
	RASN1Object *obj1 = object->list.objects[1];
	if (obj1) {
		iasu->serialNumber = FUNC0 (obj1->sector, obj1->length);
	}
	return true;
}
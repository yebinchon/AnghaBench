#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ut32 ;
struct TYPE_9__ {int length; TYPE_3__** objects; } ;
struct TYPE_11__ {scalar_t__ klass; scalar_t__ tag; TYPE_1__ list; int /*<<< orphan*/  length; scalar_t__* sector; } ;
struct TYPE_10__ {size_t version; int /*<<< orphan*/  unauthenticatedAttributes; int /*<<< orphan*/  encryptedDigest; int /*<<< orphan*/  digestEncryptionAlgorithm; int /*<<< orphan*/  authenticatedAttributes; int /*<<< orphan*/  digestAlgorithm; int /*<<< orphan*/  issuerAndSerialNumber; } ;
typedef  TYPE_2__ RPKCS7SignerInfo ;
typedef  TYPE_3__ RASN1Object ;

/* Variables and functions */
 scalar_t__ CLASS_CONTEXT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static bool FUNC4(RPKCS7SignerInfo *si, RASN1Object *object) {
	RASN1Object **elems;
	ut32 shift = 3;
	if (!si || !object || object->list.length < 5) {
		return false;
	}
	elems = object->list.objects;
	//Following RFC
	si->version = (ut32)elems[0]->sector[0];
	FUNC2 (&si->issuerAndSerialNumber, elems[1]);
	FUNC3 (&si->digestAlgorithm, elems[2]);
	if (shift < object->list.length && elems[shift]->klass == CLASS_CONTEXT && elems[shift]->tag == 0) {
		FUNC1 (&si->authenticatedAttributes, elems[shift]);
		shift++;
	}
	if (shift < object->list.length) {
		FUNC3 (&si->digestEncryptionAlgorithm, elems[shift]);
		shift++;
	}
	if (shift < object->list.length) {
		RASN1Object *obj1 = object->list.objects[shift];
		if (obj1) {
			si->encryptedDigest = FUNC0 (obj1->sector, obj1->length);
			shift++;
		}
	}
	if (shift < object->list.length) {
		RASN1Object *elem = elems[shift];
		if (elem && elem->klass == CLASS_CONTEXT && elem->tag == 1) {
			FUNC1 (&si->unauthenticatedAttributes, elems[shift]);
		}
	}
	return true;
}
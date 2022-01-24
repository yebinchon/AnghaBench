#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ut32 ;
struct TYPE_11__ {int length; TYPE_3__** objects; } ;
struct TYPE_13__ {scalar_t__ klass; scalar_t__ form; scalar_t__ tag; int length; TYPE_1__ list; scalar_t__* sector; } ;
struct TYPE_12__ {size_t version; int /*<<< orphan*/  extensions; void* subjectUniqueID; void* issuerUniqueID; int /*<<< orphan*/  subjectPublicKeyInfo; int /*<<< orphan*/  subject; int /*<<< orphan*/  validity; int /*<<< orphan*/  issuer; int /*<<< orphan*/  signature; int /*<<< orphan*/  serialNumber; } ;
typedef  TYPE_2__ RX509TBSCertificate ;
typedef  TYPE_3__ RASN1Object ;

/* Variables and functions */
 scalar_t__ CLASS_CONTEXT ; 
 scalar_t__ CLASS_UNIVERSAL ; 
 scalar_t__ FORM_CONSTRUCTED ; 
 scalar_t__ TAG_INTEGER ; 
 void* FUNC0 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_3__*) ; 

bool FUNC7 (RX509TBSCertificate *tbsc, RASN1Object *object) {
	RASN1Object **elems;
	ut32 i;
	ut32 shift = 0;
	if (!tbsc || !object || object->list.length < 6) {
		return false;
	}
	elems = object->list.objects;
	//Following RFC
	if (elems[0]->list.length == 1 &&
		elems[0]->klass == CLASS_CONTEXT &&
		elems[0]->form == FORM_CONSTRUCTED &&
		elems[0]->list.objects[0]->tag == TAG_INTEGER &&
		elems[0]->list.objects[0]->length == 1) {
		//Integer inside a CLASS_CONTEXT
		tbsc->version = (ut32)elems[0]->list.objects[0]->sector[0];
		shift = 1;
	} else {
		tbsc->version = 0;
	}
	if (shift < object->list.length && elems[shift]->klass == CLASS_UNIVERSAL && elems[shift]->tag == TAG_INTEGER) {
		tbsc->serialNumber = FUNC1 (elems[shift]->sector, elems[shift]->length);
	}
	FUNC2 (&tbsc->signature, elems[shift + 1]);
	FUNC4 (&tbsc->issuer, elems[shift + 2]);
	FUNC6 (&tbsc->validity, elems[shift + 3]);
	FUNC4 (&tbsc->subject, elems[shift + 4]);
	FUNC5 (&tbsc->subjectPublicKeyInfo, elems[shift + 5]);
	if (tbsc->version > 0) {
		for (i = shift + 6; i < object->list.length; i++) {
			if (!elems[i] || elems[i]->klass != CLASS_CONTEXT) {
				continue;
			}
			if (elems[i]->tag == 1) {
				tbsc->issuerUniqueID = FUNC0 (object->list.objects[i]->sector, object->list.objects[i]->length);
			}
			if (!elems[i]) {
				continue;
			}
			if (elems[i]->tag == 2) {
				tbsc->subjectUniqueID = FUNC0 (object->list.objects[i]->sector, object->list.objects[i]->length);
			}
			if (!elems[i]) {
				continue;
			}
			if (tbsc->version == 2 && elems[i]->tag == 3 && elems[i]->form == FORM_CONSTRUCTED) {
				FUNC3 (&tbsc->extensions, elems[i]);
			}
		}
	}
	return true;
}
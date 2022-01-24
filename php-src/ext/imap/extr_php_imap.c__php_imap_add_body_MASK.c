#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_8__ {TYPE_4__* parameter; scalar_t__ type; } ;
struct TYPE_7__ {int lines; int bytes; } ;
struct TYPE_11__ {scalar_t__ type; scalar_t__ encoding; struct TYPE_11__* CONTENT_MSG_BODY; scalar_t__ subtype; TYPE_3__* CONTENT_PART; TYPE_4__* parameter; TYPE_2__ disposition; TYPE_1__ size; scalar_t__ id; scalar_t__ description; } ;
struct TYPE_10__ {scalar_t__ value; scalar_t__ attribute; struct TYPE_10__* next; } ;
struct TYPE_9__ {TYPE_5__ body; struct TYPE_9__* next; } ;
typedef  TYPE_3__ PART ;
typedef  TYPE_4__ PARAMETER ;
typedef  TYPE_5__ BODY ;

/* Variables and functions */
 scalar_t__ ENCMAX ; 
 scalar_t__ TYPEMAX ; 
 scalar_t__ TYPEMESSAGE ; 
 scalar_t__ TYPEMULTIPART ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*) ; 

void FUNC7(zval *arg, BODY *body)
{
	zval parametres, param, dparametres, dparam;
	PARAMETER *par, *dpar;
	PART *part;

	if (body->type <= TYPEMAX) {
		FUNC2(arg, "type", body->type);
	}

	if (body->encoding <= ENCMAX) {
		FUNC2(arg, "encoding", body->encoding);
	}

	if (body->subtype) {
		FUNC2(arg, "ifsubtype", 1);
		FUNC3(arg, "subtype", body->subtype);
	} else {
		FUNC2(arg, "ifsubtype", 0);
	}

	if (body->description) {
		FUNC2(arg, "ifdescription", 1);
		FUNC3(arg, "description", body->description);
	} else {
		FUNC2(arg, "ifdescription", 0);
	}

	if (body->id) {
		FUNC2(arg, "ifid", 1);
		FUNC3(arg, "id", body->id);
	} else {
		FUNC2(arg, "ifid", 0);
	}

	if (body->size.lines) {
		FUNC2(arg, "lines", body->size.lines);
	}

	if (body->size.bytes) {
		FUNC2(arg, "bytes", body->size.bytes);
	}

#ifdef IMAP41
	if (body->disposition.type) {
		add_property_long(arg, "ifdisposition", 1);
		add_property_string(arg, "disposition", body->disposition.type);
	} else {
		add_property_long(arg, "ifdisposition", 0);
	}

	if (body->disposition.parameter) {
		dpar = body->disposition.parameter;
		add_property_long(arg, "ifdparameters", 1);
		array_init(&dparametres);
		do {
			object_init(&dparam);
			add_property_string(&dparam, "attribute", dpar->attribute);
			add_property_string(&dparam, "value", dpar->value);
			add_next_index_object(&dparametres, &dparam);
		} while ((dpar = dpar->next));
		add_assoc_object(arg, "dparameters", &dparametres);
	} else {
		add_property_long(arg, "ifdparameters", 0);
	}
#endif

	if ((par = body->parameter)) {
		FUNC2(arg, "ifparameters", 1);

		FUNC4(&parametres);
		do {
			FUNC5(&param);
			if (par->attribute) {
				FUNC3(&param, "attribute", par->attribute);
			}
			if (par->value) {
				FUNC3(&param, "value", par->value);
			}

			FUNC1(&parametres, &param);
		} while ((par = par->next));
	} else {
		FUNC5(&parametres);
		FUNC2(arg, "ifparameters", 0);
	}
	FUNC0(arg, "parameters", &parametres);

	/* multipart message ? */
	if (body->type == TYPEMULTIPART) {
		FUNC4(&parametres);
		for (part = body->CONTENT_PART; part; part = part->next) {
			FUNC5(&param);
			FUNC7(&param, &part->body);
			FUNC1(&parametres, &param);
		}
		FUNC0(arg, "parts", &parametres);
	}

	/* encapsulated message ? */
	if ((body->type == TYPEMESSAGE) && (!FUNC6(body->subtype, "rfc822"))) {
		body = body->CONTENT_MSG_BODY;
		FUNC4(&parametres);
		FUNC5(&param);
		FUNC7(&param, body);
		FUNC1(&parametres, &param);
		FUNC0(arg, "parts", &parametres);
	}
}
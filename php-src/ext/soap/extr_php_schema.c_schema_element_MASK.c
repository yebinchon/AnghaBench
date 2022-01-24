#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_47__   TYPE_8__ ;
typedef  struct TYPE_46__   TYPE_7__ ;
typedef  struct TYPE_45__   TYPE_6__ ;
typedef  struct TYPE_44__   TYPE_5__ ;
typedef  struct TYPE_43__   TYPE_4__ ;
typedef  struct TYPE_42__   TYPE_3__ ;
typedef  struct TYPE_41__   TYPE_2__ ;
typedef  struct TYPE_40__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* xmlNsPtr ;
typedef  TYPE_4__* xmlNodePtr ;
typedef  TYPE_5__* xmlAttrPtr ;
struct TYPE_45__ {int /*<<< orphan*/  s; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_6__ smart_str ;
typedef  TYPE_7__* sdlTypePtr ;
typedef  int /*<<< orphan*/  sdlType ;
typedef  TYPE_8__* sdlPtr ;
typedef  TYPE_7__* sdlContentModelPtr ;
typedef  int /*<<< orphan*/  sdlContentModel ;
struct TYPE_47__ {int /*<<< orphan*/ * elements; } ;
struct TYPE_40__ {int /*<<< orphan*/ * content; TYPE_7__* element; } ;
struct TYPE_46__ {char* namens; char* name; int nillable; scalar_t__ form; int /*<<< orphan*/  encode; void* def; void* fixed; TYPE_1__ u; int /*<<< orphan*/  kind; int /*<<< orphan*/ * elements; int /*<<< orphan*/  ref; } ;
struct TYPE_44__ {TYPE_2__* children; } ;
struct TYPE_43__ {struct TYPE_43__* next; int /*<<< orphan*/  name; struct TYPE_43__* children; int /*<<< orphan*/  doc; struct TYPE_43__* parent; TYPE_5__* properties; } ;
struct TYPE_42__ {scalar_t__ href; } ;
struct TYPE_41__ {scalar_t__ content; } ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E_ERROR ; 
 void* FALSE ; 
 int /*<<< orphan*/  SCHEMA_NAMESPACE ; 
 int TRUE ; 
 int /*<<< orphan*/  XSD_CONTENT_ELEMENT ; 
 scalar_t__ XSD_FORM_DEFAULT ; 
 void* XSD_FORM_QUALIFIED ; 
 void* XSD_FORM_UNQUALIFIED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  delete_type ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 void* FUNC4 (int) ; 
 void* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC7 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_8__*,TYPE_7__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (TYPE_4__*,char*) ; 
 scalar_t__ FUNC11 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,char**,char**) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_8__*,TYPE_5__*,TYPE_4__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_8__*,TYPE_5__*,TYPE_4__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_6__*,char) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*,char*) ; 
 scalar_t__ FUNC23 (char*,char*,int) ; 
 TYPE_3__* FUNC24 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,TYPE_7__*) ; 

__attribute__((used)) static int FUNC28(sdlPtr sdl, xmlAttrPtr tns, xmlNodePtr element, sdlTypePtr cur_type, sdlContentModelPtr model)
{
	xmlNodePtr trav;
	xmlAttrPtr attrs, attr, ns, name, type, ref = NULL;

	attrs = element->properties;
	ns = FUNC7(attrs, "targetNamespace");
	if (ns == NULL) {
		ns = tns;
	}

	name = FUNC7(attrs, "name");
	if (name == NULL) {
		name = ref = FUNC7(attrs, "ref");
	}

	if (name) {
		HashTable *addHash;
		sdlTypePtr newType;
		smart_str key = {0};

		newType = FUNC4(sizeof(sdlType));
		FUNC9(newType, 0, sizeof(sdlType));

		if (ref) {
			smart_str nscat = {0};
			char *type, *ns;
			xmlNsPtr nsptr;

			FUNC12(ref->children->content, &type, &ns);
			nsptr = FUNC24(element->doc, element, FUNC0(ns));
			if (nsptr != NULL) {
				FUNC18(&nscat, (char*)nsptr->href);
				newType->namens = FUNC5((char*)nsptr->href);
			} else {
				xmlAttrPtr ns = FUNC7(attrs, "targetNamespace");
				if (ns == NULL) {
					ns = tns;
				}
				if (ns) {
					FUNC18(&nscat, (char*)ns->children->content);
				}
			}
			FUNC17(&nscat, ':');
			FUNC18(&nscat, type);
			newType->name = FUNC5(type);
			FUNC16(&nscat);
			if (type) {FUNC3(type);}
			if (ns) {FUNC3(ns);}
			newType->ref = FUNC6(FUNC2(nscat.s), FUNC1(nscat.s));
			FUNC19(&nscat);
		} else {
			newType->name = FUNC5((char*)name->children->content);
			newType->namens = FUNC5((char*)ns->children->content);
		}

		newType->nillable = FALSE;

		if (cur_type == NULL) {
			if (sdl->elements == NULL) {
				sdl->elements = FUNC4(sizeof(HashTable));
				FUNC26(sdl->elements, 0, NULL, delete_type, 0);
			}
			addHash = sdl->elements;
			FUNC18(&key, newType->namens);
			FUNC17(&key, ':');
			FUNC18(&key, newType->name);
		} else {
			if (cur_type->elements == NULL) {
				cur_type->elements = FUNC4(sizeof(HashTable));
				FUNC26(cur_type->elements, 0, NULL, delete_type, 0);
			}
			addHash = cur_type->elements;
			FUNC18(&key, newType->name);
		}

		FUNC16(&key);
		if (FUNC25(addHash, key.s, newType) == NULL) {
			if (cur_type == NULL) {
				FUNC21(E_ERROR, "Parsing Schema: element '%s' already defined", FUNC2(key.s));
			} else {
				FUNC27(addHash, newType);
			}
		}
		FUNC19(&key);

		if (model != NULL) {
			sdlContentModelPtr newModel = FUNC4(sizeof(sdlContentModel));

			newModel->kind = XSD_CONTENT_ELEMENT;
			newModel->u.element = newType;

			FUNC14(element, newModel);


			FUNC27(model->u.content, newModel);
		}
		cur_type = newType;
	} else {
		FUNC20(E_ERROR, "Parsing Schema: element has no 'name' nor 'ref' attributes");
	}

	/* nillable = boolean : false */
	attrs = element->properties;
	attr = FUNC7(attrs, "nillable");
	if (attr) {
		if (ref != NULL) {
			FUNC20(E_ERROR, "Parsing Schema: element has both 'ref' and 'nillable' attributes");
		}
		if (!FUNC22((char*)attr->children->content, "true") ||
			!FUNC22((char*)attr->children->content, "1")) {
			cur_type->nillable = TRUE;
		} else {
			cur_type->nillable = FALSE;
		}
	} else {
		cur_type->nillable = FALSE;
	}

	attr = FUNC7(attrs, "fixed");
	if (attr) {
		if (ref != NULL) {
			FUNC20(E_ERROR, "Parsing Schema: element has both 'ref' and 'fixed' attributes");
		}
		cur_type->fixed = FUNC5((char*)attr->children->content);
	}

	attr = FUNC7(attrs, "default");
	if (attr) {
		if (ref != NULL) {
			FUNC20(E_ERROR, "Parsing Schema: element has both 'ref' and 'fixed' attributes");
		} else if (ref != NULL) {
			FUNC20(E_ERROR, "Parsing Schema: element has both 'default' and 'fixed' attributes");
		}
		cur_type->def = FUNC5((char*)attr->children->content);
	}

	/* form */
	attr = FUNC7(attrs, "form");
	if (attr) {
		if (FUNC23((char*)attr->children->content, "qualified", sizeof("qualified")) == 0) {
		  cur_type->form = XSD_FORM_QUALIFIED;
		} else if (FUNC23((char*)attr->children->content, "unqualified", sizeof("unqualified")) == 0) {
		  cur_type->form = XSD_FORM_UNQUALIFIED;
		} else {
		  cur_type->form = XSD_FORM_DEFAULT;
		}
	} else {
	  cur_type->form = XSD_FORM_DEFAULT;
	}
	if (cur_type->form == XSD_FORM_DEFAULT) {
 		xmlNodePtr parent = element->parent;
 		while (parent) {
			if (FUNC11(parent, "schema", SCHEMA_NAMESPACE)) {
				xmlAttrPtr def;
				def = FUNC7(parent->properties, "elementFormDefault");
				if(def == NULL || FUNC23((char*)def->children->content, "qualified", sizeof("qualified"))) {
					cur_type->form = XSD_FORM_UNQUALIFIED;
				} else {
					cur_type->form = XSD_FORM_QUALIFIED;
				}
				break;
			}
			parent = parent->parent;
  	}
		if (parent == NULL) {
			cur_type->form = XSD_FORM_UNQUALIFIED;
		}
	}

	/* type = QName */
	type = FUNC7(attrs, "type");
	if (type) {
		char *cptype, *str_ns;
		xmlNsPtr nsptr;

		if (ref != NULL) {
			FUNC20(E_ERROR, "Parsing Schema: element has both 'ref' and 'type' attributes");
		}
		FUNC12(type->children->content, &cptype, &str_ns);
		nsptr = FUNC24(element->doc, element, FUNC0(str_ns));
		if (nsptr != NULL) {
			cur_type->encode = FUNC8(sdl, cur_type, nsptr->href, FUNC0(cptype));
		}
		if (str_ns) {FUNC3(str_ns);}
		if (cptype) {FUNC3(cptype);}
	}

	trav = element->children;
	if (trav != NULL && FUNC10(trav, "annotation")) {
		/* TODO: <annotation> support */
		trav = trav->next;
	}
	if (trav != NULL) {
		if (FUNC10(trav,"simpleType")) {
			if (ref != NULL) {
				FUNC20(E_ERROR, "Parsing Schema: element has both 'ref' attribute and subtype");
			} else if (type != NULL) {
				FUNC20(E_ERROR, "Parsing Schema: element has both 'type' attribute and subtype");
			}
			FUNC15(sdl, tns, trav, cur_type);
			trav = trav->next;
		} else if (FUNC10(trav,"complexType")) {
			if (ref != NULL) {
				FUNC20(E_ERROR, "Parsing Schema: element has both 'ref' attribute and subtype");
			} else if (type != NULL) {
				FUNC20(E_ERROR, "Parsing Schema: element has both 'type' attribute and subtype");
			}
			FUNC13(sdl, tns, trav, cur_type);
			trav = trav->next;
		}
	}
	while (trav != NULL) {
		if (FUNC10(trav,"unique")) {
			/* TODO: <unique> support */
		} else if (FUNC10(trav,"key")) {
			/* TODO: <key> support */
		} else if (FUNC10(trav,"keyref")) {
			/* TODO: <keyref> support */
		} else {
			FUNC21(E_ERROR, "Parsing Schema: unexpected <%s> in element", trav->name);
		}
		trav = trav->next;
	}

	return TRUE;
}
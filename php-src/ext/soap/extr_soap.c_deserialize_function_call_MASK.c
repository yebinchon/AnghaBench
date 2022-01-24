#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_44__   TYPE_9__ ;
typedef  struct TYPE_43__   TYPE_8__ ;
typedef  struct TYPE_42__   TYPE_7__ ;
typedef  struct TYPE_41__   TYPE_6__ ;
typedef  struct TYPE_40__   TYPE_5__ ;
typedef  struct TYPE_39__   TYPE_4__ ;
typedef  struct TYPE_38__   TYPE_3__ ;
typedef  struct TYPE_37__   TYPE_2__ ;
typedef  struct TYPE_36__   TYPE_1__ ;
typedef  struct TYPE_35__   TYPE_12__ ;
typedef  struct TYPE_34__   TYPE_11__ ;
typedef  struct TYPE_33__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  TYPE_5__* xmlNodePtr ;
typedef  TYPE_6__* xmlDocPtr ;
typedef  TYPE_7__* xmlAttrPtr ;
struct TYPE_43__ {int mustUnderstand; int num_params; struct TYPE_43__* next; int /*<<< orphan*/  retval; int /*<<< orphan*/ * parameters; TYPE_12__* function; TYPE_11__* hdr; int /*<<< orphan*/  function_name; } ;
typedef  TYPE_8__ soapHeader ;
struct TYPE_44__ {int /*<<< orphan*/  s; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_9__ smart_str ;
typedef  TYPE_10__* sdlSoapBindingFunctionPtr ;
typedef  TYPE_11__* sdlSoapBindingFunctionHeaderPtr ;
typedef  int /*<<< orphan*/ * sdlPtr ;
typedef  TYPE_12__* sdlFunctionPtr ;
struct TYPE_42__ {TYPE_1__* children; struct TYPE_42__* next; int /*<<< orphan*/ * ns; } ;
struct TYPE_41__ {int /*<<< orphan*/  children; } ;
struct TYPE_40__ {scalar_t__ type; struct TYPE_40__* children; struct TYPE_40__* next; TYPE_2__* ns; TYPE_7__* properties; int /*<<< orphan*/  name; } ;
struct TYPE_39__ {scalar_t__ bindingType; } ;
struct TYPE_38__ {scalar_t__ headers; } ;
struct TYPE_37__ {scalar_t__ href; } ;
struct TYPE_36__ {scalar_t__ content; } ;
struct TYPE_35__ {int /*<<< orphan*/  bindingAttributes; TYPE_4__* binding; scalar_t__ functionName; } ;
struct TYPE_34__ {int /*<<< orphan*/  encode; } ;
struct TYPE_33__ {scalar_t__ style; TYPE_3__ input; } ;

/* Variables and functions */
 scalar_t__ BINDING_SOAP ; 
 int /*<<< orphan*/  E_ERROR ; 
 int SOAP_1_1 ; 
 char* SOAP_1_1_ACTOR_NEXT ; 
 char* SOAP_1_1_ENC_NAMESPACE ; 
 char* SOAP_1_1_ENV_NAMESPACE ; 
 int SOAP_1_2 ; 
 char* SOAP_1_2_ACTOR_NEXT ; 
 char* SOAP_1_2_ACTOR_UNLIMATERECEIVER ; 
 char* SOAP_1_2_ENC_NAMESPACE ; 
 char* SOAP_1_2_ENV_NAMESPACE ; 
 scalar_t__ SOAP_RPC ; 
 scalar_t__ XML_ELEMENT_NODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_7__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,TYPE_12__*,int*,int /*<<< orphan*/ **) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 void* FUNC9 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ *) ; 
 TYPE_7__* FUNC10 (TYPE_7__*,char*,char*) ; 
 TYPE_12__* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC12 (int /*<<< orphan*/ ,int*,char**) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_8__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC15 (TYPE_5__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_9__*,char) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_9__*,char*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC22 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (char*,char*) ; 
 TYPE_11__* FUNC24 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static sdlFunctionPtr FUNC25(sdlPtr sdl, xmlDocPtr request, char* actor, zval *function_name, int *num_params, zval **parameters, int *version, soapHeader **headers) /* {{{ */
{
	char* envelope_ns = NULL;
	xmlNodePtr trav,env,head,body,func;
	xmlAttrPtr attr;
	sdlFunctionPtr function;

	FUNC8();

	/* Get <Envelope> element */
	env = FUNC12(request->children, version, &envelope_ns);
	if (!env) {
		FUNC22("Client", "looks like we got XML without \"Envelope\" element", NULL, NULL, NULL);
	}

	attr = env->properties;
	while (attr != NULL) {
		if (attr->ns == NULL) {
			FUNC22("Client", "A SOAP Envelope element cannot have non Namespace qualified attributes", NULL, NULL, NULL);
		} else if (FUNC4(attr,"encodingStyle",SOAP_1_2_ENV_NAMESPACE)) {
			if (*version == SOAP_1_2) {
				FUNC22("Client", "encodingStyle cannot be specified on the Envelope", NULL, NULL, NULL);
			} else if (FUNC23((char*)attr->children->content,SOAP_1_1_ENC_NAMESPACE) != 0) {
				FUNC22("Client", "Unknown data encoding style", NULL, NULL, NULL);
			}
		}
		attr = attr->next;
	}

	/* Get <Header> element */
	head = NULL;
	trav = env->children;
	while (trav != NULL && trav->type != XML_ELEMENT_NODE) {
		trav = trav->next;
	}
	if (trav != NULL && FUNC15(trav,"Header",envelope_ns)) {
		head = trav;
		trav = trav->next;
	}

	/* Get <Body> element */
	body = NULL;
	while (trav != NULL && trav->type != XML_ELEMENT_NODE) {
		trav = trav->next;
	}
	if (trav != NULL && FUNC15(trav,"Body",envelope_ns)) {
		body = trav;
		trav = trav->next;
	}
	while (trav != NULL && trav->type != XML_ELEMENT_NODE) {
		trav = trav->next;
	}
	if (body == NULL) {
		FUNC22("Client", "Body must be present in a SOAP envelope", NULL, NULL, NULL);
	}
	attr = body->properties;
	while (attr != NULL) {
		if (attr->ns == NULL) {
			if (*version == SOAP_1_2) {
				FUNC22("Client", "A SOAP Body element cannot have non Namespace qualified attributes", NULL, NULL, NULL);
			}
		} else if (FUNC4(attr,"encodingStyle",SOAP_1_2_ENV_NAMESPACE)) {
			if (*version == SOAP_1_2) {
				FUNC22("Client", "encodingStyle cannot be specified on the Body", NULL, NULL, NULL);
			} else if (FUNC23((char*)attr->children->content,SOAP_1_1_ENC_NAMESPACE) != 0) {
				FUNC22("Client", "Unknown data encoding style", NULL, NULL, NULL);
			}
		}
		attr = attr->next;
	}

	if (trav != NULL && *version == SOAP_1_2) {
		FUNC22("Client", "A SOAP 1.2 envelope can contain only Header and Body", NULL, NULL, NULL);
	}

	func = NULL;
	trav = body->children;
	while (trav != NULL) {
		if (trav->type == XML_ELEMENT_NODE) {
/*
			if (func != NULL) {
				soap_server_fault("Client", "looks like we got \"Body\" with several functions call", NULL, NULL, NULL);
			}
*/
			func = trav;
			break; /* FIXME: the rest of body is ignored */
		}
		trav = trav->next;
	}
	if (func == NULL) {
		function = FUNC11(sdl, NULL);
		if (function != NULL) {
			FUNC1(function_name, (char *)function->functionName);
		} else {
			FUNC22("Client", "looks like we got \"Body\" without function call", NULL, NULL, NULL);
		}
	} else {
		if (*version == SOAP_1_1) {
			attr = FUNC10(func->properties,"encodingStyle",SOAP_1_1_ENV_NAMESPACE);
			if (attr && FUNC23((char*)attr->children->content,SOAP_1_1_ENC_NAMESPACE) != 0) {
				FUNC22("Client","Unknown Data Encoding Style", NULL, NULL, NULL);
			}
		} else {
			attr = FUNC10(func->properties,"encodingStyle",SOAP_1_2_ENV_NAMESPACE);
			if (attr && FUNC23((char*)attr->children->content,SOAP_1_2_ENC_NAMESPACE) != 0) {
				FUNC22("DataEncodingUnknown","Unknown Data Encoding Style", NULL, NULL, NULL);
			}
		}
		function = FUNC9(sdl, func, function_name);
		if (sdl != NULL && function == NULL) {
			if (*version == SOAP_1_2) {
				FUNC22("rpc:ProcedureNotPresent","Procedure not present", NULL, NULL, NULL);
			} else {
				FUNC16(E_ERROR, "Procedure '%s' not present", func->name);
			}
		}
	}

	*headers = NULL;
	if (head) {
		soapHeader *h, *last = NULL;

		attr = head->properties;
		while (attr != NULL) {
			if (attr->ns == NULL) {
				FUNC22("Client", "A SOAP Header element cannot have non Namespace qualified attributes", NULL, NULL, NULL);
			} else if (FUNC4(attr,"encodingStyle",SOAP_1_2_ENV_NAMESPACE)) {
				if (*version == SOAP_1_2) {
					FUNC22("Client", "encodingStyle cannot be specified on the Header", NULL, NULL, NULL);
				} else if (FUNC23((char*)attr->children->content,SOAP_1_1_ENC_NAMESPACE) != 0) {
					FUNC22("Client", "Unknown data encoding style", NULL, NULL, NULL);
				}
			}
			attr = attr->next;
		}
		trav = head->children;
		while (trav != NULL) {
			if (trav->type == XML_ELEMENT_NODE) {
				xmlNodePtr hdr_func = trav;
				int mustUnderstand = 0;

				if (*version == SOAP_1_1) {
					attr = FUNC10(hdr_func->properties,"encodingStyle",SOAP_1_1_ENV_NAMESPACE);
					if (attr && FUNC23((char*)attr->children->content,SOAP_1_1_ENC_NAMESPACE) != 0) {
						FUNC22("Client","Unknown Data Encoding Style", NULL, NULL, NULL);
					}
					attr = FUNC10(hdr_func->properties,"actor",envelope_ns);
					if (attr != NULL) {
						if (FUNC23((char*)attr->children->content,SOAP_1_1_ACTOR_NEXT) != 0 &&
						    (actor == NULL || FUNC23((char*)attr->children->content,actor) != 0)) {
						  goto ignore_header;
						}
					}
				} else if (*version == SOAP_1_2) {
					attr = FUNC10(hdr_func->properties,"encodingStyle",SOAP_1_2_ENV_NAMESPACE);
					if (attr && FUNC23((char*)attr->children->content,SOAP_1_2_ENC_NAMESPACE) != 0) {
						FUNC22("DataEncodingUnknown","Unknown Data Encoding Style", NULL, NULL, NULL);
					}
					attr = FUNC10(hdr_func->properties,"role",envelope_ns);
					if (attr != NULL) {
						if (FUNC23((char*)attr->children->content,SOAP_1_2_ACTOR_UNLIMATERECEIVER) != 0 &&
						    FUNC23((char*)attr->children->content,SOAP_1_2_ACTOR_NEXT) != 0 &&
						    (actor == NULL || FUNC23((char*)attr->children->content,actor) != 0)) {
						  goto ignore_header;
						}
					}
				}
				attr = FUNC10(hdr_func->properties,"mustUnderstand",envelope_ns);
				if (attr) {
					if (FUNC23((char*)attr->children->content,"1") == 0 ||
					    FUNC23((char*)attr->children->content,"true") == 0) {
						mustUnderstand = 1;
					} else if (FUNC23((char*)attr->children->content,"0") == 0 ||
					           FUNC23((char*)attr->children->content,"false") == 0) {
						mustUnderstand = 0;
					} else {
						FUNC22("Client","mustUnderstand value is not boolean", NULL, NULL, NULL);
					}
				}
				h = FUNC6(sizeof(soapHeader));
				FUNC14(h, 0, sizeof(soapHeader));
				h->mustUnderstand = mustUnderstand;
				h->function = FUNC9(sdl, hdr_func, &h->function_name);
				if (!h->function && sdl && function && function->binding && function->binding->bindingType == BINDING_SOAP) {
					sdlSoapBindingFunctionHeaderPtr hdr;
					sdlSoapBindingFunctionPtr fnb = (sdlSoapBindingFunctionPtr)function->bindingAttributes;
					if (fnb->input.headers) {
						smart_str key = {0};

						if (hdr_func->ns) {
							FUNC20(&key, (char*)hdr_func->ns->href);
							FUNC18(&key, ':');
						}
						FUNC19(&key, FUNC3(h->function_name), FUNC2(h->function_name));
						FUNC17(&key);
						if ((hdr = FUNC24(fnb->input.headers, key.s)) != NULL) {
							h->hdr = hdr;
						}
						FUNC21(&key);
					}
				}
				if (h->hdr) {
					h->num_params = 1;
					h->parameters = FUNC6(sizeof(zval));
					FUNC13(&h->parameters[0], h->hdr->encode, hdr_func);
				} else {
					if (h->function && h->function->binding && h->function->binding->bindingType == BINDING_SOAP) {
						sdlSoapBindingFunctionPtr fnb = (sdlSoapBindingFunctionPtr)h->function->bindingAttributes;
						if (fnb->style == SOAP_RPC) {
							hdr_func = hdr_func->children;
						}
					}
					FUNC5(hdr_func, h->function, &h->num_params, &h->parameters);
				}
				FUNC0(&h->retval);
				if (last == NULL) {
					*headers = h;
				} else {
					last->next = h;
				}
				last = h;
			}
ignore_header:
			trav = trav->next;
		}
	}

	if (function && function->binding && function->binding->bindingType == BINDING_SOAP) {
		sdlSoapBindingFunctionPtr fnb = (sdlSoapBindingFunctionPtr)function->bindingAttributes;
		if (fnb->style == SOAP_RPC) {
			func = func->children;
		}
	} else {
		func = func->children;
	}
	FUNC5(func, function, num_params, parameters);

	FUNC7();

	return function;
}
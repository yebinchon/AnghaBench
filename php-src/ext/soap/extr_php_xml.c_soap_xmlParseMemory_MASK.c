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
typedef  int zend_bool ;
typedef  TYPE_2__* xmlParserCtxtPtr ;
typedef  TYPE_3__* xmlDocPtr ;
struct TYPE_11__ {int /*<<< orphan*/ * URL; } ;
struct TYPE_10__ {TYPE_3__* myDoc; int /*<<< orphan*/ * directory; scalar_t__ wellFormed; int /*<<< orphan*/  options; TYPE_1__* sax; } ;
struct TYPE_9__ {int /*<<< orphan*/ * error; int /*<<< orphan*/ * warning; int /*<<< orphan*/  comment; int /*<<< orphan*/  ignorableWhitespace; } ;

/* Variables and functions */
 int /*<<< orphan*/  XML_PARSE_HUGE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  soap_Comment ; 
 int /*<<< orphan*/  soap_ignorableWhitespace ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (void const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

xmlDocPtr FUNC6(const void *buf, size_t buf_size)
{
	xmlParserCtxtPtr ctxt = NULL;
	xmlDocPtr ret;


/*
	xmlInitParser();
*/
	ctxt = FUNC2(buf, buf_size);
	if (ctxt) {
		zend_bool old;

		ctxt->sax->ignorableWhitespace = soap_ignorableWhitespace;
		ctxt->sax->comment = soap_Comment;
		ctxt->sax->warning = NULL;
		ctxt->sax->error = NULL;
		/*ctxt->sax->fatalError = NULL;*/
		ctxt->options |= XML_PARSE_HUGE;
		old = FUNC0(1);
		FUNC5(ctxt);
		FUNC0(old);
		if (ctxt->wellFormed) {
			ret = ctxt->myDoc;
			if (ret->URL == NULL && ctxt->directory != NULL) {
				ret->URL = FUNC1(ctxt->directory);
			}
		} else {
			ret = NULL;
			FUNC3(ctxt->myDoc);
			ctxt->myDoc = NULL;
		}
		FUNC4(ctxt);
	} else {
		ret = NULL;
	}

/*
	xmlCleanupParser();
*/

/*
	if (ret) {
		cleanup_xml_node((xmlNodePtr)ret);
	}
*/
	return ret;
}
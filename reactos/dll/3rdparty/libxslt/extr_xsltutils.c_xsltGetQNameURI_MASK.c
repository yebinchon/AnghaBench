#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlNsPtr ;
typedef  TYPE_2__* xmlNodePtr ;
typedef  scalar_t__ xmlChar ;
struct TYPE_7__ {int /*<<< orphan*/  doc; } ;
struct TYPE_6__ {scalar_t__ const* href; } ;

/* Variables and functions */
 scalar_t__ const* XML_XML_NAMESPACE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,scalar_t__*) ; 
 scalar_t__* FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__*,...) ; 
 int /*<<< orphan*/  xsltGenericErrorContext ; 

const xmlChar *
FUNC4(xmlNodePtr node, xmlChar ** name)
{
    int len = 0;
    xmlChar *qname;
    xmlNsPtr ns;

    if (name == NULL)
	return(NULL);
    qname = *name;
    if ((qname == NULL) || (*qname == 0))
	return(NULL);
    if (node == NULL) {
	FUNC3(xsltGenericErrorContext,
		         "QName: no element for namespace lookup %s\n",
			 qname);
	FUNC0(qname);
	*name = NULL;
	return(NULL);
    }

    /* nasty but valid */
    if (qname[0] == ':')
	return(NULL);

    /*
     * we are not trying to validate but just to cut, and yes it will
     * work even if this is a set of UTF-8 encoded chars
     */
    while ((qname[len] != 0) && (qname[len] != ':'))
	len++;

    if (qname[len] == 0)
	return(NULL);

    /*
     * handle xml: separately, this one is magical
     */
    if ((qname[0] == 'x') && (qname[1] == 'm') &&
        (qname[2] == 'l') && (qname[3] == ':')) {
	if (qname[4] == 0)
	    return(NULL);
        *name = FUNC2(&qname[4]);
	FUNC0(qname);
	return(XML_XML_NAMESPACE);
    }

    qname[len] = 0;
    ns = FUNC1(node->doc, node, qname);
    if (ns == NULL) {
	FUNC3(xsltGenericErrorContext,
		"%s:%s : no namespace bound to prefix %s\n",
		         qname, &qname[len + 1], qname);
	*name = NULL;
	FUNC0(qname);
	return(NULL);
    }
    *name = FUNC2(&qname[len + 1]);
    FUNC0(qname);
    return(ns->href);
}
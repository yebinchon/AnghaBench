#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltKeyDefPtr ;
typedef  int /*<<< orphan*/  xsltKeyDef ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_4__ {int /*<<< orphan*/ * nsList; void* nameURI; void* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static xsltKeyDefPtr
FUNC4(const xmlChar *name, const xmlChar *nameURI) {
    xsltKeyDefPtr cur;

    cur = (xsltKeyDefPtr) FUNC1(sizeof(xsltKeyDef));
    if (cur == NULL) {
	FUNC3(NULL, NULL, NULL,
		"xsltNewKeyDef : malloc failed\n");
	return(NULL);
    }
    FUNC0(cur, 0, sizeof(xsltKeyDef));
    if (name != NULL)
	cur->name = FUNC2(name);
    if (nameURI != NULL)
	cur->nameURI = FUNC2(nameURI);
    cur->nsList = NULL;
    return(cur);
}
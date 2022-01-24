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
typedef  TYPE_1__* xsltKeyTablePtr ;
typedef  int /*<<< orphan*/  xsltKeyTable ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_4__ {int /*<<< orphan*/  keys; void* nameURI; void* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static xsltKeyTablePtr
FUNC5(const xmlChar *name, const xmlChar *nameURI) {
    xsltKeyTablePtr cur;

    cur = (xsltKeyTablePtr) FUNC2(sizeof(xsltKeyTable));
    if (cur == NULL) {
	FUNC4(NULL, NULL, NULL,
		"xsltNewKeyTable : malloc failed\n");
	return(NULL);
    }
    FUNC0(cur, 0, sizeof(xsltKeyTable));
    if (name != NULL)
	cur->name = FUNC3(name);
    if (nameURI != NULL)
	cur->nameURI = FUNC3(nameURI);
    cur->keys = FUNC1(0);
    return(cur);
}
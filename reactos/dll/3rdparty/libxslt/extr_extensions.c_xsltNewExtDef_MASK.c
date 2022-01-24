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
typedef  TYPE_1__* xsltExtDefPtr ;
typedef  int /*<<< orphan*/  xsltExtDef ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_4__ {void* URI; void* prefix; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static xsltExtDefPtr
FUNC4(const xmlChar * prefix, const xmlChar * URI)
{
    xsltExtDefPtr cur;

    cur = (xsltExtDefPtr) FUNC1(sizeof(xsltExtDef));
    if (cur == NULL) {
        FUNC3(NULL, NULL, NULL,
                           "xsltNewExtDef : malloc failed\n");
        return (NULL);
    }
    FUNC0(cur, 0, sizeof(xsltExtDef));
    if (prefix != NULL)
        cur->prefix = FUNC2(prefix);
    if (URI != NULL)
        cur->URI = FUNC2(URI);
    return (cur);
}
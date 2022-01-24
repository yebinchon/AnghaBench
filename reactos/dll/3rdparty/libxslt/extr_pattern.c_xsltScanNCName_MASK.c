#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  xsltParserContextPtr ;
typedef  int /*<<< orphan*/  xmlChar ;

/* Variables and functions */
 int /*<<< orphan*/  const* CUR_PTR ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  SKIP_BLANKS ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static xmlChar *
FUNC6(xsltParserContextPtr ctxt) {
    const xmlChar *q, *cur;
    xmlChar *ret = NULL;
    int val, len;

    SKIP_BLANKS;

    cur = q = CUR_PTR;
    val = FUNC4(NULL, cur, &len);
    if (!FUNC3(val) && (val != '_'))
	return(NULL);

    while ((FUNC3(val)) || (FUNC1(val)) ||
           (val == '.') || (val == '-') ||
	   (val == '_') ||
	   (FUNC0(val)) ||
	   (FUNC2(val))) {
	cur += len;
	val = FUNC4(NULL, cur, &len);
    }
    ret = FUNC5(q, cur - q);
    CUR_PTR = cur;
    return(ret);
}
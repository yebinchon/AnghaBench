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
typedef  union codeview_reftype {int dummy; } codeview_reftype ;
struct symt {int dummy; } ;
struct symt_enum {struct symt symt; } ;
struct codeview_type_parse {int /*<<< orphan*/  module; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SymTagEnum ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct symt_enum*,union codeview_reftype const*) ; 
 struct symt_enum* FUNC1 (struct symt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct codeview_type_parse*,unsigned int,int /*<<< orphan*/ ) ; 
 union codeview_reftype* FUNC3 (struct codeview_type_parse*,unsigned int) ; 
 struct symt_enum* FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct symt* FUNC5(struct codeview_type_parse* ctp,
                                           struct symt* existing,
                                           const char* name,
                                           unsigned fieldlistno,
                                           unsigned basetype)
{
    struct symt_enum*   symt;

    if (existing)
    {
        if (!(symt = FUNC1(existing, SymTagEnum))) return NULL;
        /* should also check that all fields are the same */
    }
    else
    {
        symt = FUNC4(ctp->module, name,
                             FUNC2(ctp, basetype, FALSE));
        if (fieldlistno)
        {
            const union codeview_reftype* fieldlist;
            fieldlist = FUNC3(ctp, fieldlistno);
            FUNC0(ctp->module, symt, fieldlist);
        }
    }
    return &symt->symt;
}
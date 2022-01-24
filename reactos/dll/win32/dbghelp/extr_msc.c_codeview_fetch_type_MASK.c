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
typedef  union codeview_type {int dummy; } codeview_type ;
struct symt {int dummy; } ;
struct codeview_type_parse {int dummy; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int /*<<< orphan*/  TRUE ; 
 struct symt* FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 union codeview_type* FUNC2 (struct codeview_type_parse*,unsigned int) ; 
 struct symt* FUNC3 (struct codeview_type_parse*,unsigned int,union codeview_type const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct symt* FUNC4(struct codeview_type_parse* ctp,
                                        unsigned typeno, BOOL details)
{
    struct symt*                symt;
    const union codeview_type*  p;

    if (!typeno) return NULL;
    if ((symt = FUNC1(typeno, TRUE))) return symt;

    /* forward declaration */
    if (!(p = FUNC2(ctp, typeno)))
    {
        FUNC0("Cannot locate type %x\n", typeno);
        return NULL;
    }
    symt = FUNC3(ctp, typeno, p, details);
    if (!symt) FUNC0("Couldn't load forward type %x\n", typeno);
    return symt;
}
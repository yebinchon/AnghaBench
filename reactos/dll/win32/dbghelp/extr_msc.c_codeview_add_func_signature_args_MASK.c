#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int id; } ;
struct TYPE_5__ {unsigned int num; unsigned int* args; } ;
struct TYPE_4__ {unsigned int num; unsigned int* args; } ;
union codeview_reftype {TYPE_3__ generic; TYPE_2__ arglist_v2; TYPE_1__ arglist_v1; } ;
struct symt_function_signature {int /*<<< orphan*/  rettype; } ;
struct codeview_type_parse {int /*<<< orphan*/  module; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
#define  LF_ARGLIST_V1 129 
#define  LF_ARGLIST_V2 128 
 int /*<<< orphan*/  FUNC1 (struct codeview_type_parse*,unsigned int,int /*<<< orphan*/ ) ; 
 union codeview_reftype* FUNC2 (struct codeview_type_parse*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct symt_function_signature*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct codeview_type_parse* ctp,
                                             struct symt_function_signature* sym,
                                             unsigned ret_type,
                                             unsigned args_list)
{
    const union codeview_reftype*       reftype;

    sym->rettype = FUNC1(ctp, ret_type, FALSE);
    if (args_list && (reftype = FUNC2(ctp, args_list)))
    {
        unsigned int i;
        switch (reftype->generic.id)
        {
        case LF_ARGLIST_V1:
            for (i = 0; i < reftype->arglist_v1.num; i++)
                FUNC3(ctp->module, sym,
                                                      FUNC1(ctp, reftype->arglist_v1.args[i], FALSE));
            break;
        case LF_ARGLIST_V2:
            for (i = 0; i < reftype->arglist_v2.num; i++)
                FUNC3(ctp->module, sym,
                                                      FUNC1(ctp, reftype->arglist_v2.args[i], FALSE));
            break;
        default:
            FUNC0("Unexpected leaf %x for signature's pmt\n", reftype->generic.id);
        }
    }
}
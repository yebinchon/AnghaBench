#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct symt {int dummy; } ;
struct codeview_type_parse {int /*<<< orphan*/  module; } ;
struct TYPE_2__ {struct symt symt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 struct symt* FUNC0 (struct codeview_type_parse*,unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,struct symt*,struct symt*) ; 

__attribute__((used)) static struct symt* FUNC2(struct codeview_type_parse* ctp, 
                                            const char* name,
                                            unsigned int elemtype,
                                            unsigned int indextype,
                                            unsigned int arr_len)
{
    struct symt*        elem = FUNC0(ctp, elemtype, FALSE);
    struct symt*        index = FUNC0(ctp, indextype, FALSE);

    return &FUNC1(ctp->module, 0, -arr_len, elem, index)->symt;
}
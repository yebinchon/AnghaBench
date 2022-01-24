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
 int /*<<< orphan*/  SymTagPointerType ; 
 struct symt* FUNC0 (struct symt*,int /*<<< orphan*/ ) ; 
 struct symt* FUNC1 (struct codeview_type_parse*,unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,struct symt*,int) ; 

__attribute__((used)) static struct symt* FUNC3(struct codeview_type_parse* ctp,
                                              struct symt* existing,
                                              unsigned int pointee_type)
{
    struct symt* pointee;

    if (existing)
    {
        existing = FUNC0(existing, SymTagPointerType);
        return existing;
    }
    pointee = FUNC1(ctp, pointee_type, FALSE);
    return &FUNC2(ctp->module, pointee, sizeof(void *))->symt;
}
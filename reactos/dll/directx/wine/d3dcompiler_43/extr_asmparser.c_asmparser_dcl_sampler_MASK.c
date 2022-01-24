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
struct asm_parser {int /*<<< orphan*/  status; TYPE_1__* shader; int /*<<< orphan*/  line_no; } ;
struct TYPE_2__ {scalar_t__ version; } ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ BWRITERSPDM_MSAMPCENTROID ; 
 scalar_t__ BWRITERSPDM_PARTIALPRECISION ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  PARSE_ERR ; 
 int /*<<< orphan*/  FUNC2 (struct asm_parser*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct asm_parser *This, DWORD samptype,
                                  DWORD mod, DWORD regnum,
                                  unsigned int line_no) {
    if(!This->shader) return;
    if(mod != 0 &&
       (This->shader->version != FUNC0(3, 0) ||
        (mod != BWRITERSPDM_MSAMPCENTROID &&
         mod != BWRITERSPDM_PARTIALPRECISION))) {
        FUNC2(This, "Line %u: Unsupported modifier in dcl instruction\n", This->line_no);
        FUNC4(&This->status, PARSE_ERR);
        return;
    }
    if(!FUNC3(This->shader, samptype, mod, regnum)) {
        FUNC1("Out of memory\n");
        FUNC4(&This->status, PARSE_ERR);
    }
}
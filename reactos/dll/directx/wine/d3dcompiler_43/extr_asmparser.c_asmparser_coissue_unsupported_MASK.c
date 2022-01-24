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
struct asm_parser {int /*<<< orphan*/  status; int /*<<< orphan*/  line_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  PARSE_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct asm_parser*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct asm_parser *This) {
    FUNC0(This, "Line %u: Coissue is only supported in pixel shaders versions <= 1.4\n", This->line_no);
    FUNC1(&This->status, PARSE_ERR);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ space; int /*<<< orphan*/  sym; int /*<<< orphan*/  sect; int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ zend_gdbjit_obj ;
struct TYPE_6__ {size_t objsize; scalar_t__ p; TYPE_1__ obj; } ;
typedef  TYPE_2__ zend_gdbjit_ctx ;
typedef  int /*<<< orphan*/  zend_elf_symbol ;
typedef  int /*<<< orphan*/  zend_elf_sectheader ;
typedef  int /*<<< orphan*/  zend_elf_header ;

/* Variables and functions */
 int GDBJIT_SECT__MAX ; 
 int /*<<< orphan*/  GDBJIT_SECT_debug_abbrev ; 
 int /*<<< orphan*/  GDBJIT_SECT_debug_info ; 
 int /*<<< orphan*/  GDBJIT_SECT_debug_line ; 
 int /*<<< orphan*/  GDBJIT_SECT_eh_frame ; 
 int /*<<< orphan*/  GDBJIT_SECT_shstrtab ; 
 int /*<<< orphan*/  GDBJIT_SECT_strtab ; 
 int GDBJIT_SYM__MAX ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  zend_elfhdr_template ; 
 int /*<<< orphan*/  zend_gdbjit_debugabbrev ; 
 int /*<<< orphan*/  zend_gdbjit_debuginfo ; 
 int /*<<< orphan*/  zend_gdbjit_debugline ; 
 int /*<<< orphan*/  zend_gdbjit_ehframe ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zend_gdbjit_secthdr ; 
 int /*<<< orphan*/  zend_gdbjit_symtab ; 

__attribute__((used)) static void FUNC5(zend_gdbjit_ctx *ctx)
{
	zend_gdbjit_obj *obj = &ctx->obj;

	/* Fill in ELF header and clear structures. */
	FUNC2(&obj->hdr, &zend_elfhdr_template, sizeof(zend_elf_header));
	FUNC3(&obj->sect, 0, sizeof(zend_elf_sectheader) * GDBJIT_SECT__MAX);
	FUNC3(&obj->sym, 0, sizeof(zend_elf_symbol) * GDBJIT_SYM__MAX);

	/* Initialize sections. */
	ctx->p = obj->space;
	FUNC4(ctx, GDBJIT_SECT_shstrtab, zend_gdbjit_secthdr);
	FUNC4(ctx, GDBJIT_SECT_strtab, zend_gdbjit_symtab);
	FUNC4(ctx, GDBJIT_SECT_debug_info, zend_gdbjit_debuginfo);
	FUNC4(ctx, GDBJIT_SECT_debug_abbrev, zend_gdbjit_debugabbrev);
	FUNC4(ctx, GDBJIT_SECT_debug_line, zend_gdbjit_debugline);
	FUNC0(ctx->p, sizeof(uintptr_t));
	FUNC4(ctx, GDBJIT_SECT_eh_frame, zend_gdbjit_ehframe);
	ctx->objsize = (size_t)((char *)ctx->p - (char *)obj);

	FUNC1(ctx->objsize < sizeof(zend_gdbjit_obj));
}
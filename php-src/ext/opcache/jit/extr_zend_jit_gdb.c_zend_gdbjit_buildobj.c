
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ space; int sym; int sect; int hdr; } ;
typedef TYPE_1__ zend_gdbjit_obj ;
struct TYPE_6__ {size_t objsize; scalar_t__ p; TYPE_1__ obj; } ;
typedef TYPE_2__ zend_gdbjit_ctx ;
typedef int zend_elf_symbol ;
typedef int zend_elf_sectheader ;
typedef int zend_elf_header ;


 int GDBJIT_SECT__MAX ;
 int GDBJIT_SECT_debug_abbrev ;
 int GDBJIT_SECT_debug_info ;
 int GDBJIT_SECT_debug_line ;
 int GDBJIT_SECT_eh_frame ;
 int GDBJIT_SECT_shstrtab ;
 int GDBJIT_SECT_strtab ;
 int GDBJIT_SYM__MAX ;
 int SECTALIGN (scalar_t__,int) ;
 int ZEND_ASSERT (int) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int zend_elfhdr_template ;
 int zend_gdbjit_debugabbrev ;
 int zend_gdbjit_debuginfo ;
 int zend_gdbjit_debugline ;
 int zend_gdbjit_ehframe ;
 int zend_gdbjit_initsect (TYPE_2__*,int ,int ) ;
 int zend_gdbjit_secthdr ;
 int zend_gdbjit_symtab ;

__attribute__((used)) static void zend_gdbjit_buildobj(zend_gdbjit_ctx *ctx)
{
 zend_gdbjit_obj *obj = &ctx->obj;


 memcpy(&obj->hdr, &zend_elfhdr_template, sizeof(zend_elf_header));
 memset(&obj->sect, 0, sizeof(zend_elf_sectheader) * GDBJIT_SECT__MAX);
 memset(&obj->sym, 0, sizeof(zend_elf_symbol) * GDBJIT_SYM__MAX);


 ctx->p = obj->space;
 zend_gdbjit_initsect(ctx, GDBJIT_SECT_shstrtab, zend_gdbjit_secthdr);
 zend_gdbjit_initsect(ctx, GDBJIT_SECT_strtab, zend_gdbjit_symtab);
 zend_gdbjit_initsect(ctx, GDBJIT_SECT_debug_info, zend_gdbjit_debuginfo);
 zend_gdbjit_initsect(ctx, GDBJIT_SECT_debug_abbrev, zend_gdbjit_debugabbrev);
 zend_gdbjit_initsect(ctx, GDBJIT_SECT_debug_line, zend_gdbjit_debugline);
 SECTALIGN(ctx->p, sizeof(uintptr_t));
 zend_gdbjit_initsect(ctx, GDBJIT_SECT_eh_frame, zend_gdbjit_ehframe);
 ctx->objsize = (size_t)((char *)ctx->p - (char *)obj);

 ZEND_ASSERT(ctx->objsize < sizeof(zend_gdbjit_obj));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ swizzle; } ;
struct shader_reg {scalar_t__ type; TYPE_2__* rel_reg; TYPE_1__ u; } ;
struct asm_parser {int status; int line_no; } ;
struct TYPE_6__ {scalar_t__ swizzle; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_3__ u; } ;


 scalar_t__ BWRITERSPR_LOOP ;
 scalar_t__ BWRITERVS_NOSWIZZLE ;
 int PARSE_ERR ;
 int asmparser_message (struct asm_parser*,char*,int ) ;
 int set_parse_status (int *,int ) ;

__attribute__((used)) static void check_loop_swizzle(struct asm_parser *This,
                               const struct shader_reg *src) {
    if((src->type == BWRITERSPR_LOOP && src->u.swizzle != BWRITERVS_NOSWIZZLE) ||
       (src->rel_reg && src->rel_reg->type == BWRITERSPR_LOOP &&
        src->rel_reg->u.swizzle != BWRITERVS_NOSWIZZLE)) {
        asmparser_message(This, "Line %u: Swizzle not allowed on aL register\n", This->line_no);
        set_parse_status(&This->status, PARSE_ERR);
    }
}

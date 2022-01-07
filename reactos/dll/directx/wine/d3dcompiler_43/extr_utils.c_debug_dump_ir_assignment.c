
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlsl_ir_assignment {scalar_t__ writemask; int rhs; int lhs; } ;


 scalar_t__ BWRITERSP_WRITEMASK_ALL ;
 int TRACE (char*,...) ;
 int debug_dump_instr (int ) ;
 int debug_writemask (scalar_t__) ;

__attribute__((used)) static void debug_dump_ir_assignment(const struct hlsl_ir_assignment *assign)
{
    TRACE("= (");
    debug_dump_instr(assign->lhs);
    if (assign->writemask != BWRITERSP_WRITEMASK_ALL)
        TRACE("%s", debug_writemask(assign->writemask));
    TRACE(" ");
    debug_dump_instr(assign->rhs);
    TRACE(")");
}

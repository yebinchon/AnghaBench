
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct cpu_stack_walk {int dummy; } ;
typedef int WORD ;
typedef int ULONG64 ;
struct TYPE_5__ {int Rsp; int Rip; } ;
typedef int LONG ;
typedef int DWORD64 ;
typedef TYPE_1__ CONTEXT ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int FIXME (char*,int) ;
 int TRUE ;
 int get_int_reg (TYPE_1__*,int) ;
 int set_int_reg (TYPE_1__*,int,int) ;
 int sw_read_mem (struct cpu_stack_walk*,int,int*,int) ;

__attribute__((used)) static BOOL interpret_epilog(struct cpu_stack_walk* csw, ULONG64 pc, CONTEXT *context )
{
    BYTE insn, val8;
    WORD val16;
    LONG val32;
    DWORD64 val64;

    for (;;)
    {
        BYTE rex = 0;

        if (!sw_read_mem(csw, pc, &insn, 1)) return FALSE;
        if ((insn & 0xf0) == 0x40)
        {
            rex = insn & 0x0f;
            if (!sw_read_mem(csw, ++pc, &insn, 1)) return FALSE;
        }

        switch (insn)
        {
        case 0x58:
        case 0x59:
        case 0x5a:
        case 0x5b:
        case 0x5c:
        case 0x5d:
        case 0x5e:
        case 0x5f:
            if (!sw_read_mem(csw, context->Rsp, &val64, sizeof(DWORD64))) return FALSE;
            set_int_reg(context, insn - 0x58 + (rex & 1) * 8, val64);
            context->Rsp += sizeof(ULONG64);
            pc++;
            continue;
        case 0x81:
            if (!sw_read_mem(csw, pc + 2, &val32, sizeof(LONG))) return FALSE;
            context->Rsp += val32;
            pc += 2 + sizeof(LONG);
            continue;
        case 0x83:
            if (!sw_read_mem(csw, pc + 2, &val8, sizeof(BYTE))) return FALSE;
            context->Rsp += (signed char)val8;
            pc += 3;
            continue;
        case 0x8d:
            if (!sw_read_mem(csw, pc + 1, &insn, sizeof(BYTE))) return FALSE;
            if ((insn >> 6) == 1)
            {
                if (!sw_read_mem(csw, pc + 2, &val8, sizeof(BYTE))) return FALSE;
                context->Rsp = get_int_reg( context, (insn & 7) + (rex & 1) * 8 ) + (signed char)val8;
                pc += 3;
            }
            else
            {
                if (!sw_read_mem(csw, pc + 2, &val32, sizeof(LONG))) return FALSE;
                context->Rsp = get_int_reg( context, (insn & 7) + (rex & 1) * 8 ) + val32;
                pc += 2 + sizeof(LONG);
            }
            continue;
        case 0xc2:
            if (!sw_read_mem(csw, context->Rsp, &val64, sizeof(DWORD64))) return FALSE;
            if (!sw_read_mem(csw, pc + 1, &val16, sizeof(WORD))) return FALSE;
            context->Rip = val64;
            context->Rsp += sizeof(ULONG64) + val16;
            return TRUE;
        case 0xc3:
        case 0xf3:
            if (!sw_read_mem(csw, context->Rsp, &val64, sizeof(DWORD64))) return FALSE;
            context->Rip = val64;
            context->Rsp += sizeof(ULONG64);
            return TRUE;
        case 0xe9:
            if (!sw_read_mem(csw, pc + 1, &val32, sizeof(LONG))) return FALSE;
            pc += 5 + val32;
            continue;
        case 0xeb:
            if (!sw_read_mem(csw, pc + 1, &val8, sizeof(BYTE))) return FALSE;
            pc += 2 + (signed char)val8;
            continue;
        }
        FIXME("unsupported insn %x\n", insn);
        return FALSE;
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cpu_stack_walk {int dummy; } ;
struct TYPE_3__ {scalar_t__ EndAddress; scalar_t__ BeginAddress; } ;
typedef TYPE_1__ RUNTIME_FUNCTION ;
typedef int LONG ;
typedef scalar_t__ DWORD64 ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int sw_read_mem (struct cpu_stack_walk*,scalar_t__,int*,int) ;

__attribute__((used)) static BOOL is_inside_epilog(struct cpu_stack_walk* csw, DWORD64 pc,
                             DWORD64 base, const RUNTIME_FUNCTION *function )
{
    BYTE op0, op1, op2;
    LONG val32;

    if (!sw_read_mem(csw, pc, &op0, 1)) return FALSE;


    if ((op0 & 0xf8) == 0x48)
    {
        if (!sw_read_mem(csw, pc + 1, &op1, 1)) return FALSE;
        if (!sw_read_mem(csw, pc + 2, &op2, 1)) return FALSE;
        switch (op1)
        {
        case 0x81:
            if (op0 == 0x48 && op2 == 0xc4)
            {
                pc += 7;
                break;
            }
            return FALSE;
        case 0x83:
            if (op0 == 0x48 && op2 == 0xc4)
            {
                pc += 4;
                break;
            }
            return FALSE;
        case 0x8d:
            if (op0 & 0x06) return FALSE;
            if (((op2 >> 3) & 7) != 4) return FALSE;
            if ((op2 & 7) == 4) return FALSE;
            if ((op2 >> 6) == 1)
            {
                pc += 4;
                break;
            }
            if ((op2 >> 6) == 2)
            {
                pc += 7;
                break;
            }
            return FALSE;
        }
    }


    for (;;)
    {
        if (!sw_read_mem(csw, pc, &op0, 1)) return FALSE;
        if ((op0 & 0xf0) == 0x40)
        {
            if (!sw_read_mem(csw, ++pc, &op0, 1)) return FALSE;
        }

        switch (op0)
        {
        case 0x58:
        case 0x59:
        case 0x5a:
        case 0x5b:
        case 0x5c:
        case 0x5d:
        case 0x5e:
        case 0x5f:
            pc++;
            continue;
        case 0xc2:
        case 0xc3:
            return TRUE;
        case 0xe9:
            if (!sw_read_mem(csw, pc + 1, &val32, sizeof(LONG))) return FALSE;
            pc += 5 + val32;
            if (pc - base >= function->BeginAddress && pc - base < function->EndAddress)
                continue;
            break;
        case 0xeb:
            if (!sw_read_mem(csw, pc + 1, &op1, 1)) return FALSE;
            pc += 2 + (signed char)op1;
            if (pc - base >= function->BeginAddress && pc - base < function->EndAddress)
                continue;
            break;
        case 0xf3:
            if (!sw_read_mem(csw, pc + 1, &op1, 1)) return FALSE;
            return op1 == 0xc3;
        }
        return FALSE;
    }
}

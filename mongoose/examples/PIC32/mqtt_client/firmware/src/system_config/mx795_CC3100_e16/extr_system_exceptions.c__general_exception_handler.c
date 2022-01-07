
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_DEBUG_BreakPoint () ;
 int SYS_DEBUG_PRINT (int ,char*,int ,size_t,int ) ;
 int SYS_ERROR_ERROR ;
 int _CP0_GET_CAUSE () ;
 int _CP0_GET_EPC () ;
 int _cause_str ;
 int _excep_addr ;
 size_t _excep_code ;
 int * cause ;

void _general_exception_handler ( void )
{


    _excep_code = (_CP0_GET_CAUSE() & 0x0000007C) >> 2;
    _excep_addr = _CP0_GET_EPC();
    _cause_str = cause[_excep_code];

    SYS_DEBUG_PRINT(SYS_ERROR_ERROR, "\nGeneral Exception %s (cause=%d, addr=%x).\n",
                    _cause_str, _excep_code, _excep_addr);

    while (1)
    {
        SYS_DEBUG_BreakPoint();
    }
}

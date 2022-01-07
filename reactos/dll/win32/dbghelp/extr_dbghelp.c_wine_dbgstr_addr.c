
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Mode; int Offset; int Segment; } ;
typedef int DWORD ;
typedef TYPE_1__ ADDRESS64 ;






 char const* wine_dbg_sprintf (char*,int ,...) ;
 int wine_dbgstr_longlong (int ) ;

const char* wine_dbgstr_addr(const ADDRESS64* addr)
{
    if (!addr) return "(null)";
    switch (addr->Mode)
    {
    case 129:
        return wine_dbg_sprintf("flat<%s>", wine_dbgstr_longlong(addr->Offset));
    case 131:
        return wine_dbg_sprintf("1616<%04x:%04x>", addr->Segment, (DWORD)addr->Offset);
    case 130:
        return wine_dbg_sprintf("1632<%04x:%08x>", addr->Segment, (DWORD)addr->Offset);
    case 128:
        return wine_dbg_sprintf("real<%04x:%04x>", addr->Segment, (DWORD)addr->Offset);
    default:
        return "unknown";
    }
}

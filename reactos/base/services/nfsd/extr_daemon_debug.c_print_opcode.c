
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCSTR ;
typedef int DWORD ;


 int dprintf (int,int ) ;
 scalar_t__ opcode2string (int ) ;

void print_opcode(int level, DWORD opcode)
{
    dprintf(level, (LPCSTR)opcode2string(opcode));
}

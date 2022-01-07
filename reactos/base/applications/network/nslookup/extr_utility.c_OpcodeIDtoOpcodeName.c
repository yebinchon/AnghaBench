
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;
typedef int PCHAR ;





 int OpcodeIQuery ;
 int OpcodeQuery ;
 int OpcodeReserved ;
 int OpcodeStatus ;

PCHAR OpcodeIDtoOpcodeName( UCHAR Opcode )
{
    switch( Opcode & 0x0F )
    {
    case 129:
        return OpcodeQuery;

    case 130:
        return OpcodeIQuery;

    case 128:
        return OpcodeStatus;

    default:
        return OpcodeReserved;
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef char* PCHAR ;
 char* TypeA ;
 char* TypeAny ;
 char* TypeCNAME ;
 char* TypeMX ;
 char* TypeNS ;
 char* TypePTR ;
 char* TypeSOA ;
 char* TypeSRV ;

PCHAR TypeIDtoTypeName( USHORT TypeID )
{
    switch( TypeID )
    {
    case 135:
        return TypeA;

    case 131:
        return TypeNS;

    case 133:
        return TypeCNAME;

    case 129:
        return TypeSOA;

    case 128:
        return TypeSRV;

    case 130:
        return TypePTR;

    case 132:
        return TypeMX;

    case 134:
        return TypeAny;

    default:
        return "Unknown";
    }
}

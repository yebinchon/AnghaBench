
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;
typedef int PCHAR ;
 int RCodeFAILURE ;
 int RCodeFORMERR ;
 int RCodeNOERROR ;
 int RCodeNOTIMP ;
 int RCodeNXDOMAIN ;
 int RCodeREFUSED ;
 int RCodeReserved ;

PCHAR RCodeIDtoRCodeName( UCHAR RCode )
{
    switch( RCode & 0x0F )
    {
    case 131:
        return RCodeNOERROR;

    case 132:
        return RCodeFORMERR;

    case 133:
        return RCodeFAILURE;

    case 129:
        return RCodeNXDOMAIN;

    case 130:
        return RCodeNOTIMP;

    case 128:
        return RCodeREFUSED;

    default:
        return RCodeReserved;
    }
}

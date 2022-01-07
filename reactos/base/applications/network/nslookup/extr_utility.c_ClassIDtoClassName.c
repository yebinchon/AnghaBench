
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef char* PCHAR ;




 char* ClassAny ;
 char* ClassIN ;

PCHAR ClassIDtoClassName( USHORT ClassID )
{
    switch( ClassID )
    {
    case 128:
        return ClassIN;

    case 129:
        return ClassAny;

    default:
        return "Unknown";
    }
}

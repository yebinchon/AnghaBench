
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__* PULONG ;


 int TRACE (char*) ;

VOID
XboxGetExtendedBIOSData(PULONG ExtendedBIOSDataArea, PULONG ExtendedBIOSDataSize)
{
    TRACE("XboxGetExtendedBIOSData(): UNIMPLEMENTED\n");
    *ExtendedBIOSDataArea = 0;
    *ExtendedBIOSDataSize = 0;
}

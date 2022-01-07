
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PCHAR ;


 scalar_t__ BootLogging ;
 int BootOptionChoice ;

 int DbgPrint (char*) ;
 scalar_t__ DebuggingMode ;




 scalar_t__ VgaMode ;
 int strcat (int ,char*) ;

VOID AppendBootTimeOptions(PCHAR BootOptions)
{
    switch (BootOptionChoice)
    {
        case 130:
            strcat(BootOptions, " /SAFEBOOT:MINIMAL /SOS /NOGUIBOOT");
            break;

        case 128:
            strcat(BootOptions, " /SAFEBOOT:NETWORK /SOS /NOGUIBOOT");
            break;

        case 129:
            strcat(BootOptions, " /SAFEBOOT:MINIMAL(ALTERNATESHELL) /SOS /NOGUIBOOT");
            break;

        case 131:
            DbgPrint("Last known good configuration is not supported yet!\n");
            break;

        case 132:
            strcat(BootOptions, " /SAFEBOOT:DSREPAIR /SOS");
            break;

        default:
            break;
    }

    if (BootLogging)
        strcat(BootOptions, " /BOOTLOG");

    if (VgaMode)
        strcat(BootOptions, " /BASEVIDEO");

    if (DebuggingMode)
        strcat(BootOptions, " /DEBUG");
}

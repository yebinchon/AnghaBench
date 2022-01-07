
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int USHORT ;
typedef int PCONFIGURATION_COMPONENT_DATA ;
typedef int CHAR ;


 scalar_t__ BiosIsVesaDdcSupported () ;
 int BiosIsVesaSupported () ;
 scalar_t__ BiosVesaReadEdid () ;
 int ControllerClass ;
 int DisplayController ;
 int FldrCreateComponentKey (int ,int ,int ,int,int,int,int *,int *,int ,int *) ;
 int TRACE (char*,...) ;
 int strcpy (int *,char*) ;

__attribute__((used)) static VOID
DetectDisplayController(PCONFIGURATION_COMPONENT_DATA BusKey)
{
    CHAR Buffer[80];
    PCONFIGURATION_COMPONENT_DATA ControllerKey;
    USHORT VesaVersion;



    VesaVersion = BiosIsVesaSupported();
    if (VesaVersion != 0)
    {
        TRACE("VESA version %c.%c\n",
              (VesaVersion >> 8) + '0',
              (VesaVersion & 0xFF) + '0');
    }
    else
    {
        TRACE("VESA not supported\n");
    }

    if (VesaVersion >= 0x0200)
    {
        strcpy(Buffer, "VBE Display");
    }
    else
    {
        strcpy(Buffer, "VGA Display");
    }

    FldrCreateComponentKey(BusKey,
                           ControllerClass,
                           DisplayController,
                           0x0,
                           0x0,
                           0xFFFFFFFF,
                           Buffer,
                           ((void*)0),
                           0,
                           &ControllerKey);
    TRACE("Created key: DisplayController\\0\n");


    if (VesaVersion != 0)
    {
        if (BiosIsVesaDdcSupported())
        {
            TRACE("VESA/DDC supported!\n");
            if (BiosVesaReadEdid())
            {
                TRACE("EDID data read successfully!\n");

            }
        }
    }
}

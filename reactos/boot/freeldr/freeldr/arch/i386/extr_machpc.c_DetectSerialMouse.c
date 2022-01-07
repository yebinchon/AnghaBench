
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int UCHAR ;
typedef scalar_t__ PUCHAR ;
typedef char CHAR ;


 int MOUSE_TYPE_LOGITECH ;
 int MOUSE_TYPE_MICROSOFT ;
 int MOUSE_TYPE_NONE ;
 int MOUSE_TYPE_WHEELZ ;
 int READ_PORT_UCHAR (scalar_t__) ;
 int StallExecutionProcessor (int) ;
 int TRACE (char*,...) ;
 int WRITE_PORT_UCHAR (scalar_t__,int) ;

__attribute__((used)) static
ULONG
DetectSerialMouse(PUCHAR Port)
{
    CHAR Buffer[4];
    ULONG i;
    ULONG TimeOut;
    UCHAR LineControl;


    LineControl = READ_PORT_UCHAR(Port + 4);
    WRITE_PORT_UCHAR(Port + 4, (LineControl & ~0x02) | 0x01);
    StallExecutionProcessor(100000);







    TimeOut = 200;
    while (READ_PORT_UCHAR(Port + 5) & 0x01)
    {
        if (--TimeOut == 0)
            return MOUSE_TYPE_NONE;
        READ_PORT_UCHAR(Port);
    }





    WRITE_PORT_UCHAR(Port + 4, 0x0b);


    StallExecutionProcessor(10000);


    TimeOut = 20;
    for (i = 0; i < 4; i++)
    {
        while ((READ_PORT_UCHAR(Port + 5) & 1) == 0)
        {
            StallExecutionProcessor(100);
            --TimeOut;
            if (TimeOut == 0)
                return MOUSE_TYPE_NONE;
        }
        Buffer[i] = READ_PORT_UCHAR(Port);
    }

    TRACE("Mouse data: %x %x %x %x\n",
          Buffer[0], Buffer[1], Buffer[2], Buffer[3]);


    for (i = 0; i < 4; ++i)
    {
        if (Buffer[i] == 'B')
        {



            return MOUSE_TYPE_NONE;
        }
        else if (Buffer[i] == 'M')
        {

            if (i == 3)
            {

                return MOUSE_TYPE_NONE;
            }

            switch (Buffer[i + 1])
            {
            case '3':
                TRACE("Microsoft Mouse with 3-buttons detected\n");
                return MOUSE_TYPE_LOGITECH;

            case 'Z':
                TRACE("Microsoft Wheel Mouse detected\n");
                return MOUSE_TYPE_WHEELZ;


            default:
                TRACE("Microsoft Mouse with 2-buttons detected\n");
                return MOUSE_TYPE_MICROSOFT;
            }
        }
    }

    return MOUSE_TYPE_NONE;
}

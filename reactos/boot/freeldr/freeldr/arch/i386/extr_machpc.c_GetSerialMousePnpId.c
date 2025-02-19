
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef scalar_t__ PUCHAR ;


 int READ_PORT_UCHAR (scalar_t__) ;
 int StallExecutionProcessor (int) ;
 int WRITE_PORT_UCHAR (scalar_t__,int) ;

__attribute__((used)) static ULONG
GetSerialMousePnpId(PUCHAR Port, char *Buffer)
{
    ULONG TimeOut;
    ULONG i = 0;
    char c;
    char x;

    WRITE_PORT_UCHAR(Port + 4, 0x09);


    StallExecutionProcessor(10000);

    WRITE_PORT_UCHAR(Port + 4, 0x0b);

    StallExecutionProcessor(10000);

    for (;;)
    {
        TimeOut = 200;
        while (((READ_PORT_UCHAR(Port + 5) & 1) == 0) && (TimeOut > 0))
        {
            StallExecutionProcessor(1000);
            --TimeOut;
            if (TimeOut == 0)
            {
                return 0;
            }
        }

        c = READ_PORT_UCHAR(Port);
        if (c == 0x08 || c == 0x28)
            break;
    }

    Buffer[i++] = c;
    x = c + 1;

    for (;;)
    {
        TimeOut = 200;
        while (((READ_PORT_UCHAR(Port + 5) & 1) == 0) && (TimeOut > 0))
        {
            StallExecutionProcessor(1000);
            --TimeOut;
            if (TimeOut == 0)
                return 0;
        }
        c = READ_PORT_UCHAR(Port);
        Buffer[i++] = c;
        if (c == x)
            break;
        if (i >= 256)
            break;
    }

    return i;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int UCHAR ;
typedef scalar_t__ PUCHAR ;


 int READ_PORT_UCHAR (scalar_t__) ;
 int WRITE_PORT_UCHAR (scalar_t__,int) ;

__attribute__((used)) static
VOID
InitializeSerialPort(PUCHAR Port,
                     UCHAR LineControl)
{
    WRITE_PORT_UCHAR(Port + 3, 0x80);
    WRITE_PORT_UCHAR(Port, 0x60);
    WRITE_PORT_UCHAR(Port + 1, 0);
    WRITE_PORT_UCHAR(Port + 3, LineControl);
    WRITE_PORT_UCHAR(Port + 1, 0);
    WRITE_PORT_UCHAR(Port + 4, 0x09);
    READ_PORT_UCHAR(Port + 5);
}

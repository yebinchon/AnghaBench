
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;
typedef int PUCHAR ;


 int READ_PORT_UCHAR (int ) ;
 int WRITE_PORT_UCHAR (int ,int) ;

__attribute__((used)) static
UCHAR
GetFloppyType(UCHAR DriveNumber)
{
    UCHAR Data;

    WRITE_PORT_UCHAR((PUCHAR)0x70, 0x10);
    Data = READ_PORT_UCHAR((PUCHAR)0x71);

    if (DriveNumber == 0)
        return Data >> 4;
    else if (DriveNumber == 1)
        return Data & 0x0F;

    return 0;
}

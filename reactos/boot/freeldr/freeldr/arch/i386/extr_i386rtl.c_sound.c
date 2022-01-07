
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PUCHAR ;


 int READ_PORT_UCHAR (int ) ;
 int WRITE_PORT_UCHAR (int ,int) ;

void sound(int freq)
{
    int scale;

    if (freq == 0)
    {
        WRITE_PORT_UCHAR((PUCHAR)0x61, READ_PORT_UCHAR((PUCHAR)0x61) & ~3);
        return;
    }

    scale = 1193046 / freq;
    WRITE_PORT_UCHAR((PUCHAR)0x43, 0xb6);
    WRITE_PORT_UCHAR((PUCHAR)0x42, scale & 0xff);
    WRITE_PORT_UCHAR((PUCHAR)0x42, scale >> 8);
    WRITE_PORT_UCHAR((PUCHAR)0x61, READ_PORT_UCHAR((PUCHAR)0x61) | 3);
}

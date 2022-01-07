
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int UCHAR ;
typedef int PUSHORT ;
typedef int PUCHAR ;
typedef int BOOLEAN ;


 int FALSE ;
 scalar_t__ I2C_IO_BASE ;
 int READ_PORT_UCHAR (int ) ;
 int READ_PORT_USHORT (int ) ;
 int StallExecutionProcessor (int) ;
 int TRUE ;
 int WRITE_PORT_UCHAR (int ,int) ;
 int WRITE_PORT_USHORT (int ,unsigned int) ;

__attribute__((used)) static BOOLEAN
WriteToSMBus(UCHAR Address, UCHAR bRegister, UCHAR Size, ULONG Data_to_smbus)
{
  int nRetriesToLive=50;

  while(READ_PORT_USHORT((PUSHORT) (I2C_IO_BASE+0)) & 0x0800)
  {
    ;
  }

  while(nRetriesToLive--)
  {
    UCHAR b;
    unsigned int temp;

    WRITE_PORT_UCHAR((PUCHAR)(I2C_IO_BASE + 4), (Address << 1) | 0);
    WRITE_PORT_UCHAR((PUCHAR)(I2C_IO_BASE + 8), bRegister);

    switch (Size)
    {
      case 4:
        WRITE_PORT_UCHAR((PUCHAR) (I2C_IO_BASE + 9), Data_to_smbus & 0xff);
        WRITE_PORT_UCHAR((PUCHAR) (I2C_IO_BASE + 9), (Data_to_smbus >> 8) & 0xff );
        WRITE_PORT_UCHAR((PUCHAR) (I2C_IO_BASE + 9), (Data_to_smbus >> 16) & 0xff );
        WRITE_PORT_UCHAR((PUCHAR) (I2C_IO_BASE + 9), (Data_to_smbus >> 24) & 0xff );
        WRITE_PORT_USHORT((PUSHORT) (I2C_IO_BASE + 6), 4);
        break;
      case 2:
        WRITE_PORT_USHORT((PUSHORT) (I2C_IO_BASE + 6), Data_to_smbus&0xffff);
        break;
      default:
        WRITE_PORT_USHORT((PUSHORT) (I2C_IO_BASE + 6), Data_to_smbus&0xff);
        break;
    }


    temp = READ_PORT_USHORT((PUSHORT) (I2C_IO_BASE + 0));
    WRITE_PORT_USHORT((PUSHORT) (I2C_IO_BASE + 0), temp);

    switch (Size)
    {
      case 4:
        WRITE_PORT_UCHAR((PUCHAR) (I2C_IO_BASE + 2), 0x1d);
        break;
      case 2:
        WRITE_PORT_UCHAR((PUCHAR) (I2C_IO_BASE + 2), 0x1b);
        break;
      default:
        WRITE_PORT_UCHAR((PUCHAR) (I2C_IO_BASE + 2), 0x1a);
        break;
    }

    b = 0;

    while( (b&0x36)==0 )
    {
      b=READ_PORT_UCHAR((PUCHAR) (I2C_IO_BASE + 0));
    }

    if ((b&0x10) != 0)
    {
      return TRUE;
    }

    StallExecutionProcessor(1);
  }

  return FALSE;
}

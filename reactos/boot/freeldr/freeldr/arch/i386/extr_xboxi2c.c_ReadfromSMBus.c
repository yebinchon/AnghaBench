
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int ULONG ;
typedef int UCHAR ;
typedef int * PUSHORT ;
typedef int PUCHAR ;
typedef int BOOLEAN ;


 int FALSE ;
 scalar_t__ I2C_IO_BASE ;
 void* READ_PORT_UCHAR (int ) ;
 int READ_PORT_USHORT (int *) ;
 int TRUE ;
 int WRITE_PORT_UCHAR (int ,int) ;
 int WRITE_PORT_USHORT (int *,int) ;

__attribute__((used)) static BOOLEAN
ReadfromSMBus(UCHAR Address, UCHAR bRegister, UCHAR Size, ULONG *Data_to_smbus)
{
  int nRetriesToLive=50;

  while (0 != (READ_PORT_USHORT((PUSHORT) (I2C_IO_BASE + 0)) & 0x0800))
    {
      ;
    }

  while (0 != nRetriesToLive--)
    {
      UCHAR b;
      int temp;

      WRITE_PORT_UCHAR((PUCHAR) (I2C_IO_BASE + 4), (Address << 1) | 1);
      WRITE_PORT_UCHAR((PUCHAR) (I2C_IO_BASE + 8), bRegister);

      temp = READ_PORT_USHORT((USHORT *) (I2C_IO_BASE + 0));
      WRITE_PORT_USHORT((PUSHORT) (I2C_IO_BASE + 0), temp);

      switch (Size)
        {
          case 4:
            WRITE_PORT_UCHAR((PUCHAR) (I2C_IO_BASE + 2), 0x0d);
            break;
          case 2:
            WRITE_PORT_UCHAR((PUCHAR) (I2C_IO_BASE + 2), 0x0b);
            break;
          default:
            WRITE_PORT_UCHAR((PUCHAR) (I2C_IO_BASE + 2), 0x0a);
            break;
        }

      b = 0;

      while (0 == (b & 0x36))
        {
          b = READ_PORT_UCHAR((PUCHAR) (I2C_IO_BASE + 0));
        }

      if (0 != (b & 0x24))
        {

        }

      if(0 == (b & 0x10))
        {

        }
      else
        {
          switch (Size)
            {
              case 4:
                READ_PORT_UCHAR((PUCHAR) (I2C_IO_BASE + 6));
                READ_PORT_UCHAR((PUCHAR) (I2C_IO_BASE + 9));
                READ_PORT_UCHAR((PUCHAR) (I2C_IO_BASE + 9));
                READ_PORT_UCHAR((PUCHAR) (I2C_IO_BASE + 9));
                READ_PORT_UCHAR((PUCHAR) (I2C_IO_BASE + 9));
                break;
              case 2:
                *Data_to_smbus = READ_PORT_USHORT((USHORT *) (I2C_IO_BASE + 6));
                break;
              default:
                *Data_to_smbus = READ_PORT_UCHAR((PUCHAR) (I2C_IO_BASE + 6));
                break;
            }


          return TRUE;
        }
    }

  return FALSE;
}

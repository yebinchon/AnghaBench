#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  USHORT ;
typedef  int ULONG ;
typedef  int UCHAR ;
typedef  int /*<<< orphan*/ * PUSHORT ;
typedef  int /*<<< orphan*/  PUCHAR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ I2C_IO_BASE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static BOOLEAN
FUNC4(UCHAR Address, UCHAR bRegister, UCHAR Size, ULONG *Data_to_smbus)
{
  int nRetriesToLive=50;

  while (0 != (FUNC1((PUSHORT) (I2C_IO_BASE + 0)) & 0x0800))
    {
      ;  /* Franz's spin while bus busy with any master traffic */
    }

  while (0 != nRetriesToLive--)
    {
      UCHAR b;
      int temp;

      FUNC2((PUCHAR) (I2C_IO_BASE + 4), (Address << 1) | 1);
      FUNC2((PUCHAR) (I2C_IO_BASE + 8), bRegister);

      temp = FUNC1((USHORT *) (I2C_IO_BASE + 0));
      FUNC3((PUSHORT) (I2C_IO_BASE + 0), temp);  /* clear down all preexisting errors */

      switch (Size)
        {
          case 4:
            FUNC2((PUCHAR) (I2C_IO_BASE + 2), 0x0d);      /* DWORD modus ? */
            break;
          case 2:
            FUNC2((PUCHAR) (I2C_IO_BASE + 2), 0x0b);      /* WORD modus */
            break;
          default:
            FUNC2((PUCHAR) (I2C_IO_BASE + 2), 0x0a);      // BYTE
            break;
        }

      b = 0;

      while (0 == (b & 0x36))
        {
          b = FUNC0((PUCHAR) (I2C_IO_BASE + 0));
        }

      if (0 != (b & 0x24))
        {
          /* printf("I2CTransmitByteGetReturn error %x\n", b); */
        }

      if(0 == (b & 0x10))
        {
          /* printf("I2CTransmitByteGetReturn no complete, retry\n"); */
        }
      else
        {
          switch (Size)
            {
              case 4:
                FUNC0((PUCHAR) (I2C_IO_BASE + 6));
                FUNC0((PUCHAR) (I2C_IO_BASE + 9));
                FUNC0((PUCHAR) (I2C_IO_BASE + 9));
                FUNC0((PUCHAR) (I2C_IO_BASE + 9));
                FUNC0((PUCHAR) (I2C_IO_BASE + 9));
                break;
              case 2:
                *Data_to_smbus = FUNC1((USHORT *) (I2C_IO_BASE + 6));
                break;
              default:
                *Data_to_smbus = FUNC0((PUCHAR) (I2C_IO_BASE + 6));
                break;
            }


          return TRUE;
        }
    }

  return FALSE;
}
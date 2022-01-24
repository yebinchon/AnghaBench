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
typedef  int ULONG ;
typedef  int UCHAR ;
typedef  int /*<<< orphan*/  PUSHORT ;
typedef  int /*<<< orphan*/  PUCHAR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ I2C_IO_BASE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static BOOLEAN
FUNC5(UCHAR Address, UCHAR bRegister, UCHAR Size, ULONG Data_to_smbus)
{
  int nRetriesToLive=50;

  while(FUNC1((PUSHORT) (I2C_IO_BASE+0)) & 0x0800)
  {
    ;  // Franz's spin while bus busy with any master traffic
  }

  while(nRetriesToLive--)
  {
    UCHAR b;
    unsigned int temp;

    FUNC3((PUCHAR)(I2C_IO_BASE + 4), (Address << 1) | 0);
    FUNC3((PUCHAR)(I2C_IO_BASE + 8), bRegister);

    switch (Size)
    {
      case 4:
        FUNC3((PUCHAR) (I2C_IO_BASE + 9), Data_to_smbus & 0xff);
        FUNC3((PUCHAR) (I2C_IO_BASE + 9), (Data_to_smbus >> 8) & 0xff );
        FUNC3((PUCHAR) (I2C_IO_BASE + 9), (Data_to_smbus >> 16) & 0xff );
        FUNC3((PUCHAR) (I2C_IO_BASE + 9), (Data_to_smbus >> 24) & 0xff );
        FUNC4((PUSHORT) (I2C_IO_BASE + 6), 4);
        break;
      case 2:
        FUNC4((PUSHORT) (I2C_IO_BASE + 6), Data_to_smbus&0xffff);
        break;
      default:    // 1
        FUNC4((PUSHORT) (I2C_IO_BASE + 6), Data_to_smbus&0xff);
        break;
    }


    temp = FUNC1((PUSHORT) (I2C_IO_BASE + 0));
    FUNC4((PUSHORT) (I2C_IO_BASE + 0), temp);  // clear down all preexisting errors

    switch (Size)
    {
      case 4:
        FUNC3((PUCHAR) (I2C_IO_BASE + 2), 0x1d);    // DWORD modus
        break;
      case 2:
        FUNC3((PUCHAR) (I2C_IO_BASE + 2), 0x1b);    // WORD modus
        break;
      default:    // 1
        FUNC3((PUCHAR) (I2C_IO_BASE + 2), 0x1a);    // BYTE modus
        break;
    }

    b = 0;

    while( (b&0x36)==0 )
    {
      b=FUNC0((PUCHAR) (I2C_IO_BASE + 0));
    }

    if ((b&0x10) != 0)
    {
      return TRUE;
    }

    FUNC2(1);
  }

  return FALSE;
}
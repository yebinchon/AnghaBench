
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int baut_rate; void* exist_parity; int parity; int stop_bits; void* data_bits; } ;
 void* EIGHT_BITS ;
 int EVEN_BITS ;
 void* FIVE_BITS ;
 int NONE_BITS ;
 int ODD_BITS ;
 int ONE_HALF_STOP_BIT ;
 int ONE_STOP_BIT ;




 void* SEVEN_BITS ;
 void* SIX_BITS ;
 void* STICK_PARITY_DIS ;
 void* STICK_PARITY_EN ;
 int TWO_STOP_BIT ;
 TYPE_1__ UartDev ;
 int uart_setup (unsigned int) ;

uint32_t platform_uart_setup( unsigned id, uint32_t baud, int databits, int parity, int stopbits )
{
  switch( baud )
  {
    case 142:
    case 135:
    case 148:
    case 144:
    case 137:
    case 132:
    case 146:
    case 141:
    case 139:
    case 136:
    case 134:
    case 149:
    case 145:
    case 143:
    case 138:
    case 133:
    case 147:
    case 140:
      UartDev.baut_rate = baud;
      break;
    default:
      UartDev.baut_rate = 132;
      break;
  }

  switch( databits )
  {
    case 5:
      UartDev.data_bits = FIVE_BITS;
      break;
    case 6:
      UartDev.data_bits = SIX_BITS;
      break;
    case 7:
      UartDev.data_bits = SEVEN_BITS;
      break;
    case 8:
      UartDev.data_bits = EIGHT_BITS;
      break;
    default:
      UartDev.data_bits = EIGHT_BITS;
      break;
  }

  switch (stopbits)
  {
    case 129:
      UartDev.stop_bits = ONE_HALF_STOP_BIT;
      break;
    case 128:
      UartDev.stop_bits = TWO_STOP_BIT;
      break;
    default:
      UartDev.stop_bits = ONE_STOP_BIT;
      break;
  }

  switch (parity)
  {
    case 131:
      UartDev.parity = EVEN_BITS;
      UartDev.exist_parity = STICK_PARITY_EN;
      break;
    case 130:
      UartDev.parity = ODD_BITS;
      UartDev.exist_parity = STICK_PARITY_EN;
      break;
    default:
      UartDev.parity = NONE_BITS;
      UartDev.exist_parity = STICK_PARITY_DIS;
      break;
  }

  uart_setup(id);

  return baud;
}

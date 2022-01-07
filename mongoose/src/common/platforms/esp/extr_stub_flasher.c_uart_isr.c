
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef void* uint32_t ;
struct data_buf {scalar_t__ flags; } ;
struct TYPE_2__ {int state; size_t bwi; int ps; struct data_buf* bufs; } ;





 void* READ_PERI_REG (int ) ;


 int SET_PERI_REG_MASK (int ,int ) ;
 int UART_FIFO_REG (int ) ;
 int UART_INT_CLR_REG (int ) ;
 int UART_INT_ENA_REG (int ) ;
 int UART_INT_ST_REG (int ) ;
 int UART_STATUS_REG (int ) ;
 int WRITE_PERI_REG (int ,void*) ;
 int add_byte (scalar_t__) ;
 int next_write_buf () ;
 TYPE_1__ ub ;

void uart_isr(void *arg) {
  uint32_t int_st = READ_PERI_REG(UART_INT_ST_REG(0));
  uint8_t fifo_len, i;
  while ((fifo_len = READ_PERI_REG(UART_STATUS_REG(0))) > 0) {
    for (i = 0; i < fifo_len; i++) {
      uint8_t byte = READ_PERI_REG(UART_FIFO_REG(0));
      switch (ub.state) {
        case 128: {
          if (byte == 0xc0) {
            ub.state = 130;
            ub.ps = 0;
          }
          break;
        }
        case 130:
        case 132: {
          struct data_buf *buf = &ub.bufs[ub.bwi];
          if (byte == 0xdb) {
            ub.state = 129;
          } else if (byte == 0xc0) {
            next_write_buf();
            if (ub.ps == 0) {

              ub.state = 131;
              SET_PERI_REG_MASK(UART_INT_ENA_REG(0), 0);
              goto out;
            } else {
              ub.state = 128;
            }
          } else {
            if (ub.state == 130) {
              buf->flags = byte;
              ub.state = 132;
            } else {
              add_byte(byte);
            }
          }
          break;
        }
        case 129: {
          if (byte == 0xdc) {
            byte = 0xc0;
          } else if (byte == 0xdd) {
            byte = 0xdb;
          } else {
            ub.state = 131;
            SET_PERI_REG_MASK(UART_INT_ENA_REG(0), 0);
            goto out;
          }
          add_byte(byte);
          ub.state = 132;
          break;
        }
        case 131: {
          goto out;
        }
      }
    }
  }
out:
  WRITE_PERI_REG(UART_INT_CLR_REG(0), int_st);
  (void) arg;
}

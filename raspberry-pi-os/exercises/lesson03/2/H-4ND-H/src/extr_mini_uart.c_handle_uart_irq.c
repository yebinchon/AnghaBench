
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUX_MU_IIR_REG ;
 int AUX_MU_IO_REG ;
 int AUX_MU_LSR_REG ;
 scalar_t__ BUFFER_SIZE ;
 char* buffer ;
 int get32 (int ) ;
 int put32 (int ,char) ;
 scalar_t__ rd_buffer_index ;
 scalar_t__ wr_buffer_index ;

void handle_uart_irq()
{
 unsigned int id = get32(AUX_MU_IIR_REG);
 if((id & 0x06) == 0x04)
 {
  while(get32(AUX_MU_LSR_REG)&0x01)
  {
   buffer[wr_buffer_index++] = get32(AUX_MU_IO_REG)&0xFF;
   if(wr_buffer_index == BUFFER_SIZE)
    wr_buffer_index = 0;
  }
 }
 if((id & 0x06) == 0x02)
 {
  while(get32(AUX_MU_LSR_REG)&0x20)
  {
   if(rd_buffer_index == wr_buffer_index)
     break;
   char c = buffer[rd_buffer_index++];
   put32(AUX_MU_IO_REG,c);
   if(rd_buffer_index == BUFFER_SIZE)
    rd_buffer_index = 0;
  }
 }
}

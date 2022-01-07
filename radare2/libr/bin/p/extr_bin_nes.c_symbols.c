
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RList ;
typedef int RBinFile ;


 int IRQ_VECTOR_START_ADDRESS ;
 int JOYPAD_PORT ;
 int JOYPAD_PORT1 ;
 int JOYPAD_PORT2 ;
 int NMI_VECTOR_START_ADDRESS ;
 int PPU_ADDRESS ;
 int PPU_CTRL_REG1 ;
 int PPU_CTRL_REG2 ;
 int PPU_DATA ;
 int PPU_SCROLL_REG ;
 int PPU_SPR_ADDR ;
 int PPU_SPR_DATA ;
 int PPU_STATUS ;
 int RESET_VECTOR_START_ADDRESS ;
 int SND_DELTA_REG ;
 int SND_MASTERCTRL_REG ;
 int SND_NOISE_REG ;
 int SND_REGISTER ;
 int SND_SQUARE1_REG ;
 int SND_SQUARE2_REG ;
 int SND_TRIANGLE_REG ;
 int SPR_DMA ;
 int addsym (int *,char*,int ,int) ;
 int free ;
 int * r_list_newf (int ) ;

__attribute__((used)) static RList* symbols(RBinFile *bf) {
 RList *ret = ((void*)0);
 if (!(ret = r_list_newf (free))) {
  return ((void*)0);
 }
 addsym (ret, "NMI_VECTOR_START_ADDRESS", NMI_VECTOR_START_ADDRESS,2);
 addsym (ret, "RESET_VECTOR_START_ADDRESS", RESET_VECTOR_START_ADDRESS,2);
 addsym (ret, "IRQ_VECTOR_START_ADDRESS", IRQ_VECTOR_START_ADDRESS,2);
 addsym (ret, "PPU_CTRL_REG1", PPU_CTRL_REG1,0x1);
 addsym (ret, "PPU_CTRL_REG2", PPU_CTRL_REG2,0x1);
 addsym (ret, "PPU_STATUS", PPU_STATUS,0x1);
 addsym (ret, "PPU_SPR_ADDR", PPU_SPR_ADDR,0x1);
 addsym (ret, "PPU_SPR_DATA", PPU_SPR_DATA,0x1);
 addsym (ret, "PPU_SCROLL_REG", PPU_SCROLL_REG,0x1);
 addsym (ret, "PPU_ADDRESS", PPU_ADDRESS,0x1);
 addsym (ret, "PPU_DATA", PPU_DATA,0x1);
 addsym (ret, "SND_REGISTER", SND_REGISTER,0x15);
 addsym (ret, "SND_SQUARE1_REG", SND_SQUARE1_REG,0x4);
 addsym (ret, "SND_SQUARE2_REG", SND_SQUARE2_REG,0x4);
 addsym (ret, "SND_TRIANGLE_REG", SND_TRIANGLE_REG,0x4);
 addsym (ret, "SND_NOISE_REG", SND_NOISE_REG,0x2);
 addsym (ret, "SND_DELTA_REG", SND_DELTA_REG,0x4);
 addsym (ret, "SND_MASTERCTRL_REG", SND_MASTERCTRL_REG,0x5);
 addsym (ret, "SPR_DMA", SPR_DMA,0x2);
 addsym (ret, "JOYPAD_PORT", JOYPAD_PORT,0x1);
 addsym (ret, "JOYPAD_PORT1", JOYPAD_PORT1,0x1);
 addsym (ret, "JOYPAD_PORT2", JOYPAD_PORT2,0x1);
 return ret;
}

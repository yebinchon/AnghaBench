
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Cnt; int BufferSize; char* pBuffer; int ReturnValue; int RTTBufferIndex; } ;
typedef TYPE_1__ SEGGER_RTT_PRINTF_DESC ;


 int SEGGER_RTT_Write (int ,char*,int) ;

__attribute__((used)) static void _StoreChar(SEGGER_RTT_PRINTF_DESC * p, char c) {
  int Cnt;

  Cnt = p->Cnt;
  if ((Cnt + 1) <= p->BufferSize) {
    *(p->pBuffer + Cnt) = c;
    p->Cnt = Cnt + 1;
    p->ReturnValue++;
  }



  if (p->Cnt == p->BufferSize) {
    if (SEGGER_RTT_Write(p->RTTBufferIndex, p->pBuffer, p->Cnt) != p->Cnt) {
      p->ReturnValue = -1;
    } else {
      p->Cnt = 0;
    }
  }
}

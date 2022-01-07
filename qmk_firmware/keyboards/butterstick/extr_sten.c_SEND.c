
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int * CMDBUF ;
 size_t CMDLEN ;
 scalar_t__ COMMAND ;
 size_t MAX_CMD_BUF ;
 scalar_t__ cMode ;
 int register_code (int ) ;
 int uprintf (char*,size_t,size_t) ;

void SEND(uint8_t kc) {

 if (cMode == COMMAND && CMDLEN < MAX_CMD_BUF) {

  uprintf("CMD LEN: %d BUF: %d\n", CMDLEN, MAX_CMD_BUF);

  CMDBUF[CMDLEN] = kc;
  CMDLEN++;
 }

 if (cMode != COMMAND) register_code(kc);
 return;
}

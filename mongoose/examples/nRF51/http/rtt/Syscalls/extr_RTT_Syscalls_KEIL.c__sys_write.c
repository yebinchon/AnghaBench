
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ FILEHANDLE ;


 unsigned int SEGGER_RTT_Write (int ,char const*,unsigned int) ;
 scalar_t__ STDOUT ;

int _sys_write(FILEHANDLE hFile, const unsigned char * pBuffer, unsigned NumBytes, int Mode) {
  int r = 0;

  if (hFile == STDOUT) {
    return NumBytes - SEGGER_RTT_Write(0, (const char*)pBuffer, NumBytes);
  }
  return r;
}

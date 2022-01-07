
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILEHANDLE ;



int _sys_istty(FILEHANDLE hFile) {
  if (hFile > 0x8000) {
    return (1);
  }
  return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_TRUNC ;
 int TIFFErrorExt (int ,char const*,char*,char const*) ;

int
_TIFFgetMode(const char* mode, const char* module)
{
 int m = -1;

 switch (mode[0]) {
 case 'r':
  m = O_RDONLY;
  if (mode[1] == '+')
   m = O_RDWR;
  break;
 case 'w':
 case 'a':
  m = O_RDWR|O_CREAT;
  if (mode[0] == 'w')
   m |= O_TRUNC;
  break;
 default:
  TIFFErrorExt(0, module, "\"%s\": Bad mode", mode);
  break;
 }
 return (m);
}

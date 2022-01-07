
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TIFF ;


 int O_BINARY ;
 int TIFFErrorExt (int ,char const*,char*,char const*,...) ;
 int * TIFFFdOpen (int,char const*,char const*) ;
 int _TIFFgetMode (char const*,char const*) ;
 int close (int) ;
 scalar_t__ errno ;
 int open (char const*,int,int) ;
 int * strerror (scalar_t__) ;

TIFF*
TIFFOpen(const char* name, const char* mode)
{
 static const char module[] = "TIFFOpen";
 int m, fd;
 TIFF* tif;

 m = _TIFFgetMode(mode, module);
 if (m == -1)
  return ((TIFF*)0);






 fd = open(name, m, 0666);
 if (fd < 0) {
  if (errno > 0 && strerror(errno) != ((void*)0) ) {
   TIFFErrorExt(0, module, "%s: %s", name, strerror(errno) );
  } else {
   TIFFErrorExt(0, module, "%s: Cannot open", name);
  }
  return ((TIFF *)0);
 }

 tif = TIFFFdOpen((int)fd, name, mode);
 if(!tif)
  close(fd);
 return tif;
}

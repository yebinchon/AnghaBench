
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arch ;
 int delta ;
 int endian ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int gamme ;
 int* ma ;
 int memcmp (int*,char*,int) ;
 int printf (char*,...) ;
 int quite ;
 int size ;
 int stderr ;

int set_arch_settings()
{
 switch(arch) {
 case 129:
  gamme = 1;
  delta = 1;
  size = 3;
  break;
 case 131:
  gamme = -1;
  delta = 1;
  size = 3;
  break;
 case 128:
  gamme = 1;
  delta = 0;
  size = 4;
  break;
 case 130:


  if (!memcmp(ma, "\x7f\x45\x4c\x46", 4)) {
   short ar = (ma[0x12]<<8) + ma[0x13];
   switch(ar) {
   case 0x0300:
    if (endian==-1)
     endian = 1;
    if (!quite)
     printf("# -a x86\n");
    arch = 128;
    endian = 1;
    return 1;
   case 0x0014:
    if (endian==-1)
     endian = 0;
    if (!quite)
    printf("# -a ppc\n");
    arch = 129;
    return 1;
   case 0x2800:
    if (endian==-1)
     endian = 1;
    if (!quite)
    printf("# -a arm\n");
    arch = 131;
    return 1;
   default:
    printf("Unsupported architecture '%04x'.\n", ar);
    exit(1);
   }
  } else

  if (!memcmp(ma, "\x4d\x5a",2)) {
   unsigned short off = ma[0x3c];
   if (!memcmp(ma+off, "PE\x00\x00",4)) {
    unsigned short ar = (ma[off+4]<<8)+ma[off+5];
    switch(ar) {
    case 0x4c01:
     if (endian==-1)
      endian = 1;
     printf("# -a x86\n");
     arch = 128;
     endian = 1;
     return 1;
    case 0xc001:
     if (endian==-1)
      endian = 1;
     printf("# -a arm\n");
     arch = 131;
     endian = 1;
     return 1;
    default:
     fprintf(stderr, "Unknown architecture.\n");
     break;
    }
   }
  } else {
   fprintf(stderr, "Plz. gimmie an architecture. (xrefs -a [arch])\n");
   exit(1);
  }
 }

 return 0;
}

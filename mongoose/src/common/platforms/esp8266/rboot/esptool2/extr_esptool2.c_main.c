
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CreateBinFile (char*,char*,int,unsigned char,unsigned char,unsigned char,int,char**,int) ;
 int CreateHeaderFile (char*,char*,char**,int) ;
 int ExportElfSection (char*,char*,char*) ;
 int debugon ;
 int error (char*,...) ;
 int print (char*,...) ;
 int quieton ;
 int remove (char*) ;
 int strcmp (char*,char*) ;

int main(int argc, char *argv[]) {

 int i;
 char *infile;
 char *outfile;
 int numstr;
 bool binfile = 0;
 bool libfile = 0;
 bool headerfile = 0;
 bool paramerror = 0;
 bool iromchksum = 0;
 int bootver = 0;

 unsigned char mode = 0xff;
 unsigned char size = 0xff;
 unsigned char clock = 0;
 int opts = 0;


 for (i = 1; i < argc; i++) {
  if (!strcmp(argv[i], "-bin")) {
   binfile = 1;
   opts++;
  } else if (!strcmp(argv[i], "-lib")) {
   libfile = 1;
   opts++;
  } else if (!strcmp(argv[i], "-header")) {
   headerfile = 1;
   opts++;
  } else if (!strcmp(argv[i], "-quiet")) {
   quieton = 1;
  } else if (!strcmp(argv[i], "-debug")) {
   debugon = 1;
  } else if (!strcmp(argv[i], "-boot0")) {
   bootver = 0;
  } else if (!strcmp(argv[i], "-boot1")) {
   bootver = 1;
  } else if (!strcmp(argv[i], "-boot2")) {
   bootver = 2;
  } else if (!strcmp(argv[i], "-qio")) {
   mode = 0;
  } else if (!strcmp(argv[i], "-qout")) {
   mode = 1;
  } else if (!strcmp(argv[i], "-dio")) {
   mode = 2;
  } else if (!strcmp(argv[i], "-dout")) {
   mode = 3;
  } else if (!strcmp(argv[i], "-256")) {
   size = 1;
  } else if (!strcmp(argv[i], "-512")) {
   size = 0;
  } else if (!strcmp(argv[i], "-1024")) {
   size = 2;
  } else if (!strcmp(argv[i], "-2048")) {
   size = 3;
  } else if (!strcmp(argv[i], "-4096")) {
   size = 4;
  } else if (!strcmp(argv[i], "-20")) {
   clock = 2;
  } else if (!strcmp(argv[i], "-26.7")) {
   clock = 1;
  } else if (!strcmp(argv[i], "-40")) {
   clock = 0;
  } else if (!strcmp(argv[i], "-80")) {
   clock = 15;
  } else if (!strcmp(argv[i], "-iromchksum")) {
   iromchksum = 1;
  } else if (!strcmp(argv[i], "--")) {
   i++;
   break;
  } else if (argv[i][0] == '-') {
   paramerror = 1;
   break;
  } else {
   break;
  }
 }

 print("esptool2 v2.0.0 - (c) 2015 Richard A Burton <richardaburton@gmail.com>\r\n");
 print("This program is licensed under the GPL v3.\r\n");
    print("See the file LICENSE for details.\r\n\r\n");

 if (paramerror) {
  error("Error: Unrecognised option '%s'.\r\n", argv[i]);
  return -1;
 }

 if (argc < 2) {
  print("Usage:\r\n");
  print("esptool2 -lib [options] <input_file> <output_file>\r\n");
  print("esptool2 -bin [options] <input_file> <output_file> <elf_section>...\r\n");
  print("esptool2 -header [options] <input_file> <output_file> <elf_section>...\r\n");
  print("\r\n");
  print("  -lib\r\n");
  print("       Export the sdk library (.irom0.text), for a standalone app.\r\n");
  print("       e.g. esptool2 -elf esp8266_iot.out out.bin\r\n");
  print("\r\n");
  print("  -header\r\n");
  print("       Export elf sections as bytes to a C header file.\r\n");
  print("       e.g. esptool2 -elf esp8266_iot.out out.h .text .data .rodata\r\n");
  print("\r\n");
  print("  -bin\r\n");
  print("       Create binary program image, for standalone and bootloaded apps, with\r\n");
  print("       specified elf sections. Includes sdk library for bootloaded apps.\r\n");
  print("       e.g. esptool2 -bin esp8266_iot.out out.bin .text .data .rodata\r\n");
  print("       Options:\r\n");
  print("        bootloader: -boot0 -boot1 -boot2 (default -boot0)\r\n");
  print("          -boot0 = standalone app, not built for bootloader use\r\n");
  print("          -boot1 = built for bootloader v1.1\r\n");
  print("          -boot2 = built for bootloader v1.2+ (use for rBoot roms)\r\n");
  print("          (elf file must have been linked appropriately for chosen option)\r\n");
  print("        spi size (kb): -256 -512 -1024 -2048 -4096 (default -512)\r\n");
  print("        spi mode: -qio -qout -dio -dout (default -qio)\r\n");
  print("        spi speed: -20 -26.7 -40 -80 (default -40)\r\n");
  print("        include irom in checksum: -iromchksum (also needs enabling in rBoot)\r\n");
  print("\r\n");
  print("General options:\r\n");
  print("  -quiet prints only error messages\r\n");
  print("  -debug print extra debug information\r\n");
  print("  -- no more options follow (needed if your elf file starts with a '-')\r\n");
  print("\r\n");
  print("Returns:\r\n");
  print("   0 on success\r\n");
  print("  -1 on failure\r\n");
  print("\r\n");
  return -1;
 }


 if (opts != 1) {
  error("Error: You must specify -bin OR -lib OR -header for build type.\r\n");
  return -1;
 }

 if (quieton && debugon) {
  error("Error: You cannot specify -quiet and -debug.\r\n");
  return -1;
 }


 if ((libfile && i + 2 > argc) || ((binfile | headerfile) && i + 3 > argc)) {
  error("Error: Not enough arguments supplied.\r\n");
  return -1;
 } else if (libfile && i + 2 < argc) {
  error("Error: Too many arguments supplied.\r\n");
  return -1;
 }


 infile = argv[i++];
 outfile = argv[i++];
 numstr = argc - i;


 if (binfile) {
  if (!CreateBinFile(infile, outfile, bootver, mode, clock, size, iromchksum, &argv[i], numstr)) {
   remove(outfile);
   return -1;
  }
 } else if (headerfile) {
  if (!CreateHeaderFile(infile, outfile, &argv[i], numstr)) {
   remove(outfile);
   return -1;
  }
 } else {
  if (!ExportElfSection(infile, outfile, ".irom0.text")) {
   remove(outfile);
   return -1;
  }

 }

 print("Successfully created '%s'.\r\n", outfile);
 return 0;

}

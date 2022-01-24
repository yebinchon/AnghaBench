#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,unsigned char,unsigned char,unsigned char,int,char**,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char**,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 int debugon ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int quieton ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

int FUNC7(int argc, char *argv[]) {

	int i;
	char *infile;
	char *outfile;
	int numstr;
	bool binfile = false;
	bool libfile = false;
	bool headerfile = false;
	bool paramerror = false;
	bool iromchksum = false;
	int bootver = 0;
	/* Overwrite-friendly by default */
	unsigned char mode = 0xff;
	unsigned char size = 0xff;
	unsigned char clock = 0;
	int opts = 0;

	// parse options
	for (i = 1; i < argc; i++) {
		if (!FUNC6(argv[i], "-bin")) {
			binfile = true;
			opts++;
		} else if (!FUNC6(argv[i], "-lib")) {
			libfile = true;
			opts++;
		} else if (!FUNC6(argv[i], "-header")) {
			headerfile = true;
			opts++;
		} else if (!FUNC6(argv[i], "-quiet")) {
			quieton = true;
		} else if (!FUNC6(argv[i], "-debug")) {
			debugon = true;
		} else if (!FUNC6(argv[i], "-boot0")) {
			bootver = 0;
		} else if (!FUNC6(argv[i], "-boot1")) {
			bootver = 1;
		} else if (!FUNC6(argv[i], "-boot2")) {
			bootver = 2;
		} else if (!FUNC6(argv[i], "-qio")) {
			mode = 0;
		} else if (!FUNC6(argv[i], "-qout")) {
			mode = 1;
		} else if (!FUNC6(argv[i], "-dio")) {
			mode = 2;
		} else if (!FUNC6(argv[i], "-dout")) {
			mode = 3;
		} else if (!FUNC6(argv[i], "-256")) {
			size = 1;
		} else if (!FUNC6(argv[i], "-512")) {
			size = 0;
		} else if (!FUNC6(argv[i], "-1024")) {
			size = 2;
		} else if (!FUNC6(argv[i], "-2048")) {
			size = 3;
		} else if (!FUNC6(argv[i], "-4096")) {
			size = 4;
		} else if (!FUNC6(argv[i], "-20")) {
			clock = 2;
		} else if (!FUNC6(argv[i], "-26.7")) {
			clock = 1;
		} else if (!FUNC6(argv[i], "-40")) {
			clock = 0;
		} else if (!FUNC6(argv[i], "-80")) {
			clock = 15;
		} else if (!FUNC6(argv[i], "-iromchksum")) {
			iromchksum = true;
		} else if (!FUNC6(argv[i], "--")) {
			i++;
			break;
		} else if (argv[i][0] == '-') {
			paramerror = true;
			break;
		} else {
			break;
		}
	}

	FUNC4("esptool2 v2.0.0 - (c) 2015 Richard A Burton <richardaburton@gmail.com>\r\n");
	FUNC4("This program is licensed under the GPL v3.\r\n");
    FUNC4("See the file LICENSE for details.\r\n\r\n");

	if (paramerror) {
		FUNC3("Error: Unrecognised option '%s'.\r\n", argv[i]);
		return -1;
	}

	if (argc < 2) {
		FUNC4("Usage:\r\n");
		FUNC4("esptool2 -lib [options] <input_file> <output_file>\r\n");
		FUNC4("esptool2 -bin [options] <input_file> <output_file> <elf_section>...\r\n");
		FUNC4("esptool2 -header [options] <input_file> <output_file> <elf_section>...\r\n");
		FUNC4("\r\n");
		FUNC4("  -lib\r\n");
		FUNC4("       Export the sdk library (.irom0.text), for a standalone app.\r\n");
		FUNC4("       e.g. esptool2 -elf esp8266_iot.out out.bin\r\n");
		FUNC4("\r\n");
		FUNC4("  -header\r\n");
		FUNC4("       Export elf sections as bytes to a C header file.\r\n");
		FUNC4("       e.g. esptool2 -elf esp8266_iot.out out.h .text .data .rodata\r\n");
		FUNC4("\r\n");
		FUNC4("  -bin\r\n");
		FUNC4("       Create binary program image, for standalone and bootloaded apps, with\r\n");
		FUNC4("       specified elf sections. Includes sdk library for bootloaded apps.\r\n");
		FUNC4("       e.g. esptool2 -bin esp8266_iot.out out.bin .text .data .rodata\r\n");
		FUNC4("       Options:\r\n");
		FUNC4("        bootloader: -boot0 -boot1 -boot2 (default -boot0)\r\n");
		FUNC4("          -boot0 = standalone app, not built for bootloader use\r\n");
		FUNC4("          -boot1 = built for bootloader v1.1\r\n");
		FUNC4("          -boot2 = built for bootloader v1.2+ (use for rBoot roms)\r\n");
		FUNC4("          (elf file must have been linked appropriately for chosen option)\r\n");
		FUNC4("        spi size (kb): -256 -512 -1024 -2048 -4096 (default -512)\r\n");
		FUNC4("        spi mode: -qio -qout -dio -dout (default -qio)\r\n");
		FUNC4("        spi speed: -20 -26.7 -40 -80 (default -40)\r\n");
		FUNC4("        include irom in checksum: -iromchksum (also needs enabling in rBoot)\r\n");
		FUNC4("\r\n");
		FUNC4("General options:\r\n");
		FUNC4("  -quiet prints only error messages\r\n");
		FUNC4("  -debug print extra debug information\r\n");
		FUNC4("  -- no more options follow (needed if your elf file starts with a '-')\r\n");
		FUNC4("\r\n");
		FUNC4("Returns:\r\n");
		FUNC4("   0 on success\r\n");
		FUNC4("  -1 on failure\r\n");
		FUNC4("\r\n");
		return -1;
	}

	// validate command line options
	if (opts != 1) {
		FUNC3("Error: You must specify -bin OR -lib OR -header for build type.\r\n");
		return -1;
	}

	if (quieton && debugon) {
		FUNC3("Error: You cannot specify -quiet and -debug.\r\n");
		return -1;
	}

	// check enough parameters
	if ((libfile && i + 2 > argc) || ((binfile | headerfile) && i + 3 > argc)) {
		FUNC3("Error: Not enough arguments supplied.\r\n");
		return -1;
	} else if (libfile && i + 2 < argc) {
		FUNC3("Error: Too many arguments supplied.\r\n");
		return -1;
	}

	// get parameters
	infile = argv[i++];
	outfile = argv[i++];
	numstr = argc - i;

	// do it
	if (binfile) {
		if (!FUNC0(infile, outfile, bootver, mode, clock, size, iromchksum, &argv[i], numstr)) {
			FUNC5(outfile);
			return -1;
		}
	} else if (headerfile) {
		if (!FUNC1(infile, outfile, &argv[i], numstr)) {
			FUNC5(outfile);
			return -1;
		}
	} else {
		if (!FUNC2(infile, outfile, ".irom0.text")) {
			FUNC5(outfile);
			return -1;
		}
	
	}
	
	FUNC4("Successfully created '%s'.\r\n", outfile);
	return 0;

}
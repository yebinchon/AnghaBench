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
struct stat {int st_size; } ;

/* Variables and functions */
 char* FW_NAME ; 
 unsigned char MAGIC ; 
 unsigned int MAGIC_LZMA ; 
 unsigned int MAGIC_PART ; 
 int MAGIC_SZ ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 char FUNC3 () ; 
 scalar_t__ FUNC4 (unsigned char*,int,unsigned char*,int*) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned char*,int) ; 
 int FUNC8 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int FUNC11 (int,unsigned char*,int) ; 
 scalar_t__ FUNC12 (char*,struct stat*) ; 
 int FUNC13 (int,unsigned char*,int) ; 

int FUNC14(int argc, char **argv)
{
	struct stat s;
	unsigned char *buf_orig;
	unsigned int *buf;
	int buflen;
	int fd;
	int i;
	int err;
	int start = 0, end = 0;

	FUNC10("Arcadyan Firmware cutter v0.1\n");
	FUNC10("-----------------------------\n");
	FUNC10("This tool extracts the different parts of an arcadyan firmware update file\n");
	FUNC10("This tool is for private use only. The Firmware that gets extracted has a license that forbids redistribution\n");
	FUNC10("Please only run this if you understand the risks\n\n");
	FUNC10("I understand the risks ? (y/N)\n");

	if (FUNC3() != 'y')
		return -1;

	if (FUNC12(FW_NAME, &s) != 0) {
		FUNC10("Failed to find %s\n", FW_NAME);
		FUNC10("Ask Google or try https://www.telekom.de/hilfe/downloads/firmware-speedport-w921v-1.45.000.bin\n");
		return -1;
	}

	buf_orig = FUNC5(s.st_size);
	buf = FUNC5(s.st_size);
	if (!buf_orig || !buf) {
		FUNC10("Failed to alloc %d bytes\n", s.st_size);
		return -1;
	}

	fd = FUNC8(FW_NAME, O_RDONLY);
	if (fd < 0) {
		FUNC10("Unable to open %s\n", FW_NAME);
		return -1;
	}


	buflen = FUNC11(fd, buf_orig, s.st_size);
	FUNC0(fd);
	if (buflen != s.st_size) {
		FUNC10("Loaded %d instead of %d bytes inside %s\n", buflen, s.st_size, FW_NAME);
		return -1;
	}

	/* <magic> */
	buf_orig++;
	buflen -= 1;
	for (i = 0; i < MAGIC_SZ; i++) {
		if ((i % 16) < 3)
			buf_orig[i] = buf_orig[i + 16] ^ MAGIC;
		else
			buf_orig[i] = buf_orig[i] ^ MAGIC;
	}
	buflen -= 3;
	FUNC7(&buf_orig[MAGIC_SZ], &buf_orig[MAGIC_SZ + 3], buflen - MAGIC_SZ);
	FUNC6(buf, buf_orig, s.st_size);

	/* </magic> */
	do {
		if (buf[end] == MAGIC_PART) {
			end += 2;
			FUNC10("Found partition at 0x%08X with size %d\n",
				start * sizeof(unsigned int),
				(end - start) * sizeof(unsigned int));
			if (buf[start] == MAGIC_LZMA) {
				int dest_len = 1024 * 1024;
				int len = buf[end - 3];
				unsigned int id = buf[end - 6];
				const char *type = FUNC9(id);
				unsigned char *dest;

				dest = FUNC5(dest_len);
				if (!dest) {
					FUNC10("Failed to alloc dest buffer\n");
					return -1;
				}

				if (FUNC4((unsigned char*)&buf[start], len, dest, &dest_len)) {
					FUNC10("Failed to decompress data\n");
					return -1;
				}

				fd = FUNC1(type, S_IRUSR | S_IWUSR);
				if (fd != -1) {
					if (FUNC13(fd, dest, dest_len) != dest_len)
						FUNC10("\tFailed to write %d bytes\n", dest_len);
					else
						FUNC10("\tWrote %d bytes to %s\n", dest_len, type);
					FUNC0(fd);
				} else {
					FUNC10("\tFailed to open %s\n", type);
				}
				FUNC2(dest);
			} else {
				FUNC10("\tThis is not lzma\n");
			}
			start = end;
		} else {
			end++;
		}
	} while(end < buflen / sizeof(unsigned int));

	return 0;
}
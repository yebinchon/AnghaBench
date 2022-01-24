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
struct gfxinfo {short width; short height; short bits; scalar_t__ channels; } ;
typedef  int /*<<< orphan*/  php_stream ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_CUR ; 
 scalar_t__ FUNC0 (int,int) ; 
 short FUNC1 (unsigned char*,int) ; 
 int FUNC2 (unsigned char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 

__attribute__((used)) static struct gfxinfo *FUNC6(php_stream * stream)
{
	struct gfxinfo * result;
	unsigned char a[10];
	int chunkId;
	int size;
	short width, height, bits;

	if (FUNC3(stream, (char *) a, 8) != 8) {
		return NULL;
	}
	if (FUNC5((char *) a+4, "ILBM", 4) && FUNC5((char *) a+4, "PBM ", 4)) {
		return NULL;
	}

	/* loop chunks to find BMHD chunk */
	do {
		if (FUNC3(stream, (char*)a, 8) != 8) {
			return NULL;
		}
		chunkId = FUNC2(a+0, 1);
		size    = FUNC2(a+4, 1);
		if (size < 0) {
			return NULL;
		}
		if ((size & 1) == 1) {
			size++;
		}
		if (chunkId == 0x424d4844) { /* BMHD chunk */
			if (size < 9 || FUNC3(stream, (char*)a, 9) != 9) {
				return NULL;
			}
			width  = FUNC1(a+0, 1);
			height = FUNC1(a+2, 1);
			bits   = a[8] & 0xff;
			if (width > 0 && height > 0 && bits > 0 && bits < 33) {
				result = (struct gfxinfo *) FUNC0(1, sizeof(struct gfxinfo));
				result->width    = width;
				result->height   = height;
				result->bits     = bits;
				result->channels = 0;
				return result;
			}
		} else {
			if (FUNC4(stream, size, SEEK_CUR)) {
				return NULL;
			}
		}
	} while (1);
}
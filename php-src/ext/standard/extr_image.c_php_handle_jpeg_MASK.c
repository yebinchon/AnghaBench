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
typedef  int /*<<< orphan*/  zval ;
struct gfxinfo {void* channels; void* width; void* height; void* bits; } ;
typedef  int /*<<< orphan*/  php_stream ;

/* Variables and functions */
#define  M_APP0 158 
#define  M_APP1 157 
#define  M_APP10 156 
#define  M_APP11 155 
#define  M_APP12 154 
#define  M_APP13 153 
#define  M_APP14 152 
#define  M_APP15 151 
#define  M_APP2 150 
#define  M_APP3 149 
#define  M_APP4 148 
#define  M_APP5 147 
#define  M_APP6 146 
#define  M_APP7 145 
#define  M_APP8 144 
#define  M_APP9 143 
#define  M_EOI 142 
 unsigned int M_PSEUDO ; 
#define  M_SOF0 141 
#define  M_SOF1 140 
#define  M_SOF10 139 
#define  M_SOF11 138 
#define  M_SOF13 137 
#define  M_SOF14 136 
#define  M_SOF15 135 
#define  M_SOF2 134 
#define  M_SOF3 133 
#define  M_SOF5 132 
#define  M_SOF6 131 
#define  M_SOF7 130 
#define  M_SOF9 129 
#define  M_SOS 128 
 int /*<<< orphan*/  SEEK_CUR ; 
 scalar_t__ FUNC0 (int,int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,unsigned int,unsigned short) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned short,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct gfxinfo *FUNC7 (php_stream * stream, zval *info)
{
	struct gfxinfo *result = NULL;
	unsigned int marker = M_PSEUDO;
	unsigned short length, ff_read=1;

	for (;;) {
		marker = FUNC1(stream, marker, ff_read);
		ff_read = 0;
		switch (marker) {
			case M_SOF0:
			case M_SOF1:
			case M_SOF2:
			case M_SOF3:
			case M_SOF5:
			case M_SOF6:
			case M_SOF7:
			case M_SOF9:
			case M_SOF10:
			case M_SOF11:
			case M_SOF13:
			case M_SOF14:
			case M_SOF15:
				if (result == NULL) {
					/* handle SOFn block */
					result = (struct gfxinfo *) FUNC0(1, sizeof(struct gfxinfo));
					length = FUNC2(stream);
					result->bits     = FUNC5(stream);
					result->height   = FUNC2(stream);
					result->width    = FUNC2(stream);
					result->channels = FUNC5(stream);
					if (!info || length < 8) { /* if we don't want an extanded info -> return */
						return result;
					}
					if (FUNC6(stream, length - 8, SEEK_CUR)) { /* file error after info */
						return result;
					}
				} else {
					if (!FUNC4(stream)) {
						return result;
					}
				}
				break;

			case M_APP0:
			case M_APP1:
			case M_APP2:
			case M_APP3:
			case M_APP4:
			case M_APP5:
			case M_APP6:
			case M_APP7:
			case M_APP8:
			case M_APP9:
			case M_APP10:
			case M_APP11:
			case M_APP12:
			case M_APP13:
			case M_APP14:
			case M_APP15:
				if (info) {
					if (!FUNC3(stream, marker, info)) { /* read all the app marks... */
						return result;
					}
				} else {
					if (!FUNC4(stream)) {
						return result;
					}
				}
				break;

			case M_SOS:
			case M_EOI:
				return result;	/* we're about to hit image data, or are at EOF. stop processing. */

			default:
				if (!FUNC4(stream)) { /* anything else isn't interesting */
					return result;
				}
				break;
		}
	}

	return result; /* perhaps image broken -> no info but size */
}
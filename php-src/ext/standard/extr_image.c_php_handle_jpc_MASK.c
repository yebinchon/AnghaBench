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
struct gfxinfo {int channels; int bits; void* height; void* width; } ;
typedef  int /*<<< orphan*/  php_stream ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 unsigned char JPEG2000_MARKER_SIZ ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gfxinfo*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct gfxinfo *FUNC8(php_stream * stream)
{
	struct gfxinfo *result = NULL;
	int highest_bit_depth, bit_depth;
	unsigned char first_marker_id;
	unsigned int i;

	/* JPEG 2000 components can be vastly different from one another.
	   Each component can be sampled at a different resolution, use
	   a different colour space, have a separate colour depth, and
	   be compressed totally differently! This makes giving a single
	   "bit depth" answer somewhat problematic. For this implementation
	   we'll use the highest depth encountered. */

	/* Get the single byte that remains after the file type identification */
	first_marker_id = FUNC6(stream);

	/* Ensure that this marker is SIZ (as is mandated by the standard) */
	if (first_marker_id != JPEG2000_MARKER_SIZ) {
		FUNC2(NULL, E_WARNING, "JPEG2000 codestream corrupt(Expected SIZ marker not found after SOC)");
		return NULL;
	}

	result = (struct gfxinfo *)FUNC0(1, sizeof(struct gfxinfo));

	FUNC3(stream); /* Lsiz */
	FUNC3(stream); /* Rsiz */
	result->width = FUNC4(stream); /* Xsiz */
	result->height = FUNC4(stream); /* Ysiz */

#if MBO_0
	php_read4(stream); /* XOsiz */
	php_read4(stream); /* YOsiz */
	php_read4(stream); /* XTsiz */
	php_read4(stream); /* YTsiz */
	php_read4(stream); /* XTOsiz */
	php_read4(stream); /* YTOsiz */
#else
	if (FUNC7(stream, 24, SEEK_CUR)) {
		FUNC1(result);
		return NULL;
	}
#endif

	result->channels = FUNC3(stream); /* Csiz */
	if ((result->channels == 0 && FUNC5(stream)) || result->channels > 256) {
		FUNC1(result);
		return NULL;
	}

	/* Collect bit depth info */
	highest_bit_depth = 0;
	for (i = 0; i < result->channels; i++) {
		bit_depth = FUNC6(stream); /* Ssiz[i] */
		bit_depth++;
		if (bit_depth > highest_bit_depth) {
			highest_bit_depth = bit_depth;
		}

		FUNC6(stream); /* XRsiz[i] */
		FUNC6(stream); /* YRsiz[i] */
	}

	result->bits = highest_bit_depth;

	return result;
}
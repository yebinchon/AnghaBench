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
struct gfxinfo {int width; int height; scalar_t__ channels; int /*<<< orphan*/  bits; } ;
typedef  int /*<<< orphan*/  php_stream ;
typedef  int /*<<< orphan*/  a ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_CUR ; 
 scalar_t__ FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned char*,int,long) ; 

__attribute__((used)) static struct gfxinfo *FUNC4 (php_stream * stream)
{
	struct gfxinfo *result = NULL;
	long bits;
	unsigned char a[32];

	if (FUNC2(stream, 5, SEEK_CUR))
		return NULL;

	if (FUNC1(stream, (char*)a, sizeof(a)) != sizeof(a))
		return NULL;

	result = (struct gfxinfo *) FUNC0 (1, sizeof (struct gfxinfo));
	bits = FUNC3 (a, 0, 5);
	result->width = (FUNC3 (a, 5 + bits, bits) -
		FUNC3 (a, 5, bits)) / 20;
	result->height = (FUNC3 (a, 5 + (3 * bits), bits) -
		FUNC3 (a, 5 + (2 * bits), bits)) / 20;
	result->bits     = 0;
	result->channels = 0;
	return result;
}
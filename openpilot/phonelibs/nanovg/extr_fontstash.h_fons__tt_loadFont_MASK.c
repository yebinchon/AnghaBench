#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * userdata; } ;
struct TYPE_4__ {TYPE_2__ font; } ;
typedef  TYPE_1__ FONSttFontImpl ;
typedef  int /*<<< orphan*/  FONScontext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*,unsigned char*,int /*<<< orphan*/ ) ; 

int FUNC2(FONScontext *context, FONSttFontImpl *font, unsigned char *data, int dataSize)
{
	int stbError;
	FUNC0(dataSize);

	font->font.userdata = context;
	stbError = FUNC1(&font->font, data, 0);
	return stbError;
}
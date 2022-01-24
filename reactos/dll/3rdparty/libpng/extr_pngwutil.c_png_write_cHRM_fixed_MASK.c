#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  bluey; int /*<<< orphan*/  bluex; int /*<<< orphan*/  greeny; int /*<<< orphan*/  greenx; int /*<<< orphan*/  redy; int /*<<< orphan*/  redx; int /*<<< orphan*/  whitey; int /*<<< orphan*/  whitex; } ;
typedef  TYPE_1__ png_xy ;
typedef  int /*<<< orphan*/  png_structrp ;
typedef  int /*<<< orphan*/  png_byte ;

/* Variables and functions */
 int /*<<< orphan*/  png_cHRM ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

void /* PRIVATE */
FUNC3(png_structrp png_ptr, const png_xy *xy)
{
   png_byte buf[32];

   FUNC0(1, "in png_write_cHRM");

   /* Each value is saved in 1/100,000ths */
   FUNC1(buf,      xy->whitex);
   FUNC1(buf +  4, xy->whitey);

   FUNC1(buf +  8, xy->redx);
   FUNC1(buf + 12, xy->redy);

   FUNC1(buf + 16, xy->greenx);
   FUNC1(buf + 20, xy->greeny);

   FUNC1(buf + 24, xy->bluex);
   FUNC1(buf + 28, xy->bluey);

   FUNC2(png_ptr, png_cHRM, buf, 32);
}
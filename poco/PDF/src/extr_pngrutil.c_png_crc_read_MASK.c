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
typedef  int /*<<< orphan*/ * png_structp ;
typedef  int /*<<< orphan*/  png_size_t ;
typedef  int /*<<< orphan*/  png_bytep ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void /* PRIVATE */
FUNC2(png_structp png_ptr, png_bytep buf, png_size_t length)
{
   if(png_ptr == NULL) return;
   FUNC1(png_ptr, buf, length);
   FUNC0(png_ptr, buf, length);
}
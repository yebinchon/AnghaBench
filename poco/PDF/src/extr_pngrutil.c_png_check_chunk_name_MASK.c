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
typedef  int /*<<< orphan*/  png_structp ;
typedef  int /*<<< orphan*/ * png_bytep ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

void /* PRIVATE */
FUNC3(png_structp png_ptr, png_bytep chunk_name)
{
   FUNC2(1, "in png_check_chunk_name\n");
   if (FUNC0(chunk_name[0]) || FUNC0(chunk_name[1]) ||
       FUNC0(chunk_name[2]) || FUNC0(chunk_name[3]))
   {
      FUNC1(png_ptr, "invalid chunk type");
   }
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* png_structrp ;
typedef  int /*<<< orphan*/  png_bytep ;
struct TYPE_5__ {int /*<<< orphan*/  (* read_data_fn ) (TYPE_1__*,int /*<<< orphan*/ ,size_t) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,size_t) ; 

void /* PRIVATE */
FUNC3(png_structrp png_ptr, png_bytep data, size_t length)
{
   FUNC0(4, "reading %d bytes", (int)length);

   if (png_ptr->read_data_fn != NULL)
      (*(png_ptr->read_data_fn))(png_ptr, data, length);

   else
      FUNC1(png_ptr, "Call to NULL read function");
}
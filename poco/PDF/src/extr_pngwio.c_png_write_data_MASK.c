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
typedef  TYPE_1__* png_structp ;
typedef  int /*<<< orphan*/  png_size_t ;
typedef  int /*<<< orphan*/  png_bytep ;
struct TYPE_5__ {int /*<<< orphan*/  (* write_data_fn ) (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void /* PRIVATE */
FUNC2(png_structp png_ptr, png_bytep data, png_size_t length)
{
   if (png_ptr->write_data_fn != NULL )
      (*(png_ptr->write_data_fn))(png_ptr, data, length);
   else
      FUNC0(png_ptr, "Call to NULL write function");
}
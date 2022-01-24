#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ png_uint_32 ;
typedef  int /*<<< orphan*/  png_structp ;
typedef  int png_size_t ;
typedef  int* png_charp ;
typedef  int* png_bytep ;
struct TYPE_4__ {scalar_t__ input_len; int /*<<< orphan*/ * input; int /*<<< orphan*/ * output_ptr; scalar_t__ max_output_ptr; scalar_t__ num_output_ptr; } ;
typedef  TYPE_1__ compression_state ;

/* Variables and functions */
 int PNG_COMPRESSION_TYPE_BASE ; 
 int /*<<< orphan*/  PNG_iCCP ; 
 int FUNC0 (int /*<<< orphan*/ ,int*,int**) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  png_iCCP ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,int,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 

void /* PRIVATE */
FUNC9(png_structp png_ptr, png_charp name, int compression_type,
   png_charp profile, int profile_len)
{
#ifdef PNG_USE_LOCAL_ARRAYS
   PNG_iCCP;
#endif
   png_size_t name_len;
   png_charp new_name;
   compression_state comp;
   int embedded_profile_len = 0;

   FUNC1(1, "in png_write_iCCP\n");

   comp.num_output_ptr = 0;
   comp.max_output_ptr = 0;
   comp.output_ptr = NULL;
   comp.input = NULL;
   comp.input_len = 0;

   if (name == NULL || (name_len = FUNC0(png_ptr, name,
      &new_name)) == 0)
   {
      FUNC4(png_ptr, "Empty keyword in iCCP chunk");
      return;
   }

   if (compression_type != PNG_COMPRESSION_TYPE_BASE)
      FUNC4(png_ptr, "Unknown compression type in iCCP chunk");

   if (profile == NULL)
      profile_len = 0;

   if (profile_len > 3)
      embedded_profile_len =
          ((*( (png_bytep)profile  ))<<24) |
          ((*( (png_bytep)profile+1))<<16) |
          ((*( (png_bytep)profile+2))<< 8) |
          ((*( (png_bytep)profile+3))    );

   if (profile_len < embedded_profile_len)
     {
        FUNC4(png_ptr,
          "Embedded profile length too large in iCCP chunk");
        return;
     }

   if (profile_len > embedded_profile_len)
     {
        FUNC4(png_ptr,
          "Truncating profile to actual length in iCCP chunk");
        profile_len = embedded_profile_len;
     }

   if (profile_len)
       profile_len = FUNC3(png_ptr, profile, (png_size_t)profile_len,
          PNG_COMPRESSION_TYPE_BASE, &comp);

   /* make sure we include the NULL after the name and the compression type */
   FUNC7(png_ptr, png_iCCP,
          (png_uint_32)name_len+profile_len+2);
   new_name[name_len+1]=0x00;
   FUNC5(png_ptr, (png_bytep)new_name, name_len + 2);

   if (profile_len)
      FUNC8(png_ptr, &comp);

   FUNC6(png_ptr);
   FUNC2(png_ptr, new_name);
}
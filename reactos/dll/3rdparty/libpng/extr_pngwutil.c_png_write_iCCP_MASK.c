#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int png_uint_32 ;
typedef  TYPE_2__* png_structrp ;
typedef  int /*<<< orphan*/  png_const_charp ;
typedef  int /*<<< orphan*/ * png_const_bytep ;
typedef  int /*<<< orphan*/  png_byte ;
struct TYPE_17__ {scalar_t__ output_len; } ;
typedef  TYPE_3__ compression_state ;
struct TYPE_15__ {char* msg; } ;
struct TYPE_16__ {TYPE_1__ zstream; } ;

/* Variables and functions */
 int /*<<< orphan*/  PNG_COMPRESSION_TYPE_BASE ; 
 scalar_t__ Z_OK ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  png_iCCP ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_3__*) ; 

void /* PRIVATE */
FUNC10(png_structrp png_ptr, png_const_charp name,
    png_const_bytep profile)
{
   png_uint_32 name_len;
   png_uint_32 profile_len;
   png_byte new_name[81]; /* 1 byte for the compression byte */
   compression_state comp;
   png_uint_32 temp;

   FUNC1(1, "in png_write_iCCP");

   /* These are all internal problems: the profile should have been checked
    * before when it was stored.
    */
   if (profile == NULL)
      FUNC2(png_ptr, "No profile for iCCP chunk"); /* internal error */

   profile_len = FUNC3(profile);

   if (profile_len < 132)
      FUNC2(png_ptr, "ICC profile too short");

   temp = (png_uint_32) (*(profile+8));
   if (temp > 3 && (profile_len & 0x03))
      FUNC2(png_ptr, "ICC profile length invalid (not a multiple of 4)");

   {
      png_uint_32 embedded_profile_len = FUNC3(profile);

      if (profile_len != embedded_profile_len)
         FUNC2(png_ptr, "Profile length does not match profile");
   }

   name_len = FUNC0(png_ptr, name, new_name);

   if (name_len == 0)
      FUNC2(png_ptr, "iCCP: invalid keyword");

   new_name[++name_len] = PNG_COMPRESSION_TYPE_BASE;

   /* Make sure we include the NULL after the name and the compression type */
   ++name_len;

   FUNC5(&comp, profile, profile_len);

   /* Allow for keyword terminator and compression byte */
   if (FUNC4(png_ptr, png_iCCP, &comp, name_len) != Z_OK)
      FUNC2(png_ptr, png_ptr->zstream.msg);

   FUNC8(png_ptr, png_iCCP, name_len + comp.output_len);

   FUNC6(png_ptr, new_name, name_len);

   FUNC9(png_ptr, &comp);

   FUNC7(png_ptr);
}
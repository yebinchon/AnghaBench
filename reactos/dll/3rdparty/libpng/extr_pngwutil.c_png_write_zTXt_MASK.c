#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  size_t png_uint_32 ;
typedef  TYPE_2__* png_structrp ;
typedef  int /*<<< orphan*/ * png_const_charp ;
typedef  int /*<<< orphan*/  png_const_bytep ;
typedef  int /*<<< orphan*/  png_byte ;
struct TYPE_18__ {scalar_t__ output_len; } ;
typedef  TYPE_3__ compression_state ;
struct TYPE_16__ {char* msg; } ;
struct TYPE_17__ {TYPE_1__ zstream; } ;

/* Variables and functions */
 int /*<<< orphan*/  PNG_COMPRESSION_TYPE_BASE ; 
 int PNG_TEXT_COMPRESSION_NONE ; 
 int PNG_TEXT_COMPRESSION_zTXt ; 
 scalar_t__ Z_OK ; 
 size_t FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  png_zTXt ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void /* PRIVATE */
FUNC11(png_structrp png_ptr, png_const_charp key, png_const_charp text,
    int compression)
{
   png_uint_32 key_len;
   png_byte new_key[81];
   compression_state comp;

   FUNC1(1, "in png_write_zTXt");

   if (compression == PNG_TEXT_COMPRESSION_NONE)
   {
      FUNC9(png_ptr, key, text, 0);
      return;
   }

   if (compression != PNG_TEXT_COMPRESSION_zTXt)
      FUNC2(png_ptr, "zTXt: invalid compression type");

   key_len = FUNC0(png_ptr, key, new_key);

   if (key_len == 0)
      FUNC2(png_ptr, "zTXt: invalid keyword");

   /* Add the compression method and 1 for the keyword separator. */
   new_key[++key_len] = PNG_COMPRESSION_TYPE_BASE;
   ++key_len;

   /* Compute the compressed data; do it now for the length */
   FUNC4(&comp, (png_const_bytep)text,
       text == NULL ? 0 : FUNC10(text));

   if (FUNC3(png_ptr, png_zTXt, &comp, key_len) != Z_OK)
      FUNC2(png_ptr, png_ptr->zstream.msg);

   /* Write start of chunk */
   FUNC7(png_ptr, png_zTXt, key_len + comp.output_len);

   /* Write key */
   FUNC5(png_ptr, new_key, key_len);

   /* Write the compressed data */
   FUNC8(png_ptr, &comp);

   /* Close the chunk */
   FUNC6(png_ptr);
}
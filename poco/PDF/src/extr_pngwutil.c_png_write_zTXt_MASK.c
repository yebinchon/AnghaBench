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
typedef  int /*<<< orphan*/  png_uint_32 ;
typedef  int /*<<< orphan*/  png_structp ;
typedef  scalar_t__ png_size_t ;
typedef  char* png_charp ;
typedef  int /*<<< orphan*/  png_bytep ;
typedef  char png_byte ;
struct TYPE_4__ {scalar_t__ input_len; int /*<<< orphan*/ * input; int /*<<< orphan*/ * output_ptr; scalar_t__ max_output_ptr; scalar_t__ num_output_ptr; } ;
typedef  TYPE_1__ compression_state ;

/* Variables and functions */
 int PNG_TEXT_COMPRESSION_NONE ; 
 int /*<<< orphan*/  PNG_zTXt ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,char**) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  png_zTXt ; 

void /* PRIVATE */
FUNC11(png_structp png_ptr, png_charp key, png_charp text,
   png_size_t text_len, int compression)
{
#ifdef PNG_USE_LOCAL_ARRAYS
   PNG_zTXt;
#endif
   png_size_t key_len;
   char buf[1];
   png_charp new_key;
   compression_state comp;

   FUNC1(1, "in png_write_zTXt\n");

   comp.num_output_ptr = 0;
   comp.max_output_ptr = 0;
   comp.output_ptr = NULL;
   comp.input = NULL;
   comp.input_len = 0;

   if (key == NULL || (key_len = FUNC0(png_ptr, key, &new_key))==0)
   {
      FUNC5(png_ptr, "Empty keyword in zTXt chunk");
      return;
   }

   if (text == NULL || *text == '\0' || compression==PNG_TEXT_COMPRESSION_NONE)
   {
      FUNC10(png_ptr, new_key, text, (png_size_t)0);
      FUNC2(png_ptr, new_key);
      return;
   }

   text_len = FUNC3(text);

   /* compute the compressed data; do it now for the length */
   text_len = FUNC4(png_ptr, text, text_len, compression,
       &comp);

   /* write start of chunk */
   FUNC8(png_ptr, png_zTXt, (png_uint_32)
      (key_len+text_len+2));
   /* write key */
   FUNC6(png_ptr, (png_bytep)new_key, key_len + 1);
   FUNC2(png_ptr, new_key);

   buf[0] = (png_byte)compression;
   /* write compression */
   FUNC6(png_ptr, (png_bytep)buf, (png_size_t)1);
   /* write the compressed data */
   FUNC9(png_ptr, &comp);

   /* close the chunk */
   FUNC7(png_ptr);
}
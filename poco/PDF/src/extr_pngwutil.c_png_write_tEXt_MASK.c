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
typedef  scalar_t__ png_uint_32 ;
typedef  int /*<<< orphan*/  png_structp ;
typedef  scalar_t__ png_size_t ;
typedef  char* png_charp ;
typedef  int /*<<< orphan*/  png_bytep ;

/* Variables and functions */
 int /*<<< orphan*/  PNG_tEXt ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,char**) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  png_tEXt ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

void /* PRIVATE */
FUNC8(png_structp png_ptr, png_charp key, png_charp text,
   png_size_t text_len)
{
#ifdef PNG_USE_LOCAL_ARRAYS
   PNG_tEXt;
#endif
   png_size_t key_len;
   png_charp new_key;

   FUNC1(1, "in png_write_tEXt\n");
   if (key == NULL || (key_len = FUNC0(png_ptr, key, &new_key))==0)
   {
      FUNC4(png_ptr, "Empty keyword in tEXt chunk");
      return;
   }

   if (text == NULL || *text == '\0')
      text_len = 0;
   else
      text_len = FUNC3(text);

   /* make sure we include the 0 after the key */
   FUNC7(png_ptr, png_tEXt, (png_uint_32)key_len+text_len+1);
   /*
    * We leave it to the application to meet PNG-1.0 requirements on the
    * contents of the text.  PNG-1.0 through PNG-1.2 discourage the use of
    * any non-Latin-1 characters except for NEWLINE.  ISO PNG will forbid them.
    * The NUL character is forbidden by PNG-1.0 through PNG-1.2 and ISO PNG.
    */
   FUNC5(png_ptr, (png_bytep)new_key, key_len + 1);
   if (text_len)
      FUNC5(png_ptr, (png_bytep)text, text_len);

   FUNC6(png_ptr);
   FUNC2(png_ptr, new_key);
}
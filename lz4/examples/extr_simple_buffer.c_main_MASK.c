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

/* Variables and functions */
 int FUNC0 (int const) ; 
 int FUNC1 (char const* const,char*,int const,int const) ; 
 int FUNC2 (char*,char* const,int const,int const) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 void* FUNC4 (int const) ; 
 scalar_t__ FUNC5 (char const* const,char* const,int const) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ FUNC7 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*,int const) ; 
 scalar_t__ FUNC9 (char const* const) ; 

int FUNC10(void) {
  /* Introduction */
  // Below we will have a Compression and Decompression section to demonstrate.
  // There are a few important notes before we start:
  //   1) The return codes of LZ4_ functions are important.
  //      Read lz4.h if you're unsure what a given code means.
  //   2) LZ4 uses char* pointers in all LZ4_ functions.
  //      This is baked into the API and not going to change, for consistency.
  //      If your program uses different pointer types,
  //      you may need to do some casting or set the right -Wno compiler flags to ignore those warnings (e.g.: -Wno-pointer-sign).

  /* Compression */
  // We'll store some text into a variable pointed to by *src to be compressed later.
  const char* const src = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor site amat.";
  // The compression function needs to know how many bytes exist.  Since we're using a string, we can use strlen() + 1 (for \0).
  const int src_size = (int)(FUNC9(src) + 1);
  // LZ4 provides a function that will tell you the maximum size of compressed output based on input data via LZ4_compressBound().
  const int max_dst_size = FUNC0(src_size);
  // We will use that size for our destination boundary when allocating space.
  char* compressed_data = FUNC4((size_t)max_dst_size);
  if (compressed_data == NULL)
    FUNC8("Failed to allocate memory for *compressed_data.", 1);
  // That's all the information and preparation LZ4 needs to compress *src into *compressed_data.
  // Invoke LZ4_compress_default now with our size values and pointers to our memory locations.
  // Save the return value for error checking.
  const int compressed_data_size = FUNC1(src, compressed_data, src_size, max_dst_size);
  // Check return_value to determine what happened.
  if (compressed_data_size <= 0)
    FUNC8("A 0 or negative result from LZ4_compress_default() indicates a failure trying to compress the data. ", 1);
  if (compressed_data_size > 0)
    FUNC6("We successfully compressed some data! Ratio: %.2f\n",
        (float) compressed_data_size/src_size);
  // Not only does a positive return_value mean success, the value returned == the number of bytes required.
  // You can use this to realloc() *compress_data to free up memory, if desired.  We'll do so just to demonstrate the concept.
  compressed_data = (char *)FUNC7(compressed_data, (size_t)compressed_data_size);
  if (compressed_data == NULL)
    FUNC8("Failed to re-alloc memory for compressed_data.  Sad :(", 1);


  /* Decompression */
  // Now that we've successfully compressed the information from *src to *compressed_data, let's do the opposite!
  // The decompression will need to know the compressed size, and an upper bound of the decompressed size.
  // In this example, we just re-use this information from previous section,
  // but in a real-world scenario, metadata must be transmitted to the decompression side.
  // Each implementation is in charge of this part. Oftentimes, it adds some header of its own.
  // Sometimes, the metadata can be extracted from the local context.

  // First, let's create a *new_src location of size src_size since we know that value.
  char* const regen_buffer = FUNC4(src_size);
  if (regen_buffer == NULL)
    FUNC8("Failed to allocate memory for *regen_buffer.", 1);
  // The LZ4_decompress_safe function needs to know where the compressed data is, how many bytes long it is,
  // where the regen_buffer memory location is, and how large regen_buffer (uncompressed) output will be.
  // Again, save the return_value.
  const int decompressed_size = FUNC2(compressed_data, regen_buffer, compressed_data_size, src_size);
  FUNC3(compressed_data);   /* no longer useful */
  if (decompressed_size < 0)
    FUNC8("A negative result from LZ4_decompress_safe indicates a failure trying to decompress the data.  See exit code (echo $?) for value returned.", decompressed_size);
  if (decompressed_size >= 0)
    FUNC6("We successfully decompressed some data!\n");
  // Not only does a positive return value mean success,
  // value returned == number of bytes regenerated from compressed_data stream.
  if (decompressed_size != src_size)
    FUNC8("Decompressed data is different from original! \n", 1);

  /* Validation */
  // We should be able to compare our original *src with our *new_src and be byte-for-byte identical.
  if (FUNC5(src, regen_buffer, src_size) != 0)
    FUNC8("Validation failed.  *src and *new_src are not identical.", 1);
  FUNC6("Validation done. The string we ended up with is:\n%s\n", regen_buffer);
  return 0;
}
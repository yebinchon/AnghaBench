
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LZ4_compressBound (int const) ;
 int LZ4_compress_default (char const* const,char*,int const,int const) ;
 int LZ4_decompress_safe (char*,char* const,int const,int const) ;
 int free (char*) ;
 void* malloc (int const) ;
 scalar_t__ memcmp (char const* const,char* const,int const) ;
 int printf (char*,...) ;
 scalar_t__ realloc (char*,size_t) ;
 int run_screaming (char*,int const) ;
 scalar_t__ strlen (char const* const) ;

int main(void) {
  const char* const src = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor site amat.";

  const int src_size = (int)(strlen(src) + 1);

  const int max_dst_size = LZ4_compressBound(src_size);

  char* compressed_data = malloc((size_t)max_dst_size);
  if (compressed_data == ((void*)0))
    run_screaming("Failed to allocate memory for *compressed_data.", 1);



  const int compressed_data_size = LZ4_compress_default(src, compressed_data, src_size, max_dst_size);

  if (compressed_data_size <= 0)
    run_screaming("A 0 or negative result from LZ4_compress_default() indicates a failure trying to compress the data. ", 1);
  if (compressed_data_size > 0)
    printf("We successfully compressed some data! Ratio: %.2f\n",
        (float) compressed_data_size/src_size);


  compressed_data = (char *)realloc(compressed_data, (size_t)compressed_data_size);
  if (compressed_data == ((void*)0))
    run_screaming("Failed to re-alloc memory for compressed_data.  Sad :(", 1);
  char* const regen_buffer = malloc(src_size);
  if (regen_buffer == ((void*)0))
    run_screaming("Failed to allocate memory for *regen_buffer.", 1);



  const int decompressed_size = LZ4_decompress_safe(compressed_data, regen_buffer, compressed_data_size, src_size);
  free(compressed_data);
  if (decompressed_size < 0)
    run_screaming("A negative result from LZ4_decompress_safe indicates a failure trying to decompress the data.  See exit code (echo $?) for value returned.", decompressed_size);
  if (decompressed_size >= 0)
    printf("We successfully decompressed some data!\n");


  if (decompressed_size != src_size)
    run_screaming("Decompressed data is different from original! \n", 1);



  if (memcmp(src, regen_buffer, src_size) != 0)
    run_screaming("Validation failed.  *src and *new_src are not identical.", 1);
  printf("Validation done. The string we ended up with is:\n%s\n", regen_buffer);
  return 0;
}

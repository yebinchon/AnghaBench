
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double uint64_t ;
typedef int LZ4_stream_t ;


 double BILLION ;
 int ID__LZ4_COMPRESS_DEFAULT ;
 int ID__LZ4_COMPRESS_FAST ;
 int ID__LZ4_COMPRESS_FAST_EXTSTATE ;
 int ID__LZ4_DECOMPRESS_FAST ;
 int ID__LZ4_DECOMPRESS_SAFE ;
 int LC_ALL ;
 size_t LZ4_compressBound (size_t const) ;
 int LZ4_compress_default (char const*,char*,size_t const,size_t const) ;
 int LZ4_compress_fast (char const*,char*,size_t const,size_t const,int) ;
 int LZ4_compress_fast_extState (int *,char const*,char*,size_t const,size_t const,int) ;
 int atoi (char*) ;
 double bench (char const*,int ,int,char const*,char*,size_t const,size_t const,size_t const) ;
 char* calloc (int,size_t const) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memset (char*,int ,size_t const) ;
 int printf (char const*,...) ;
 int run_screaming (char*,int) ;
 int setlocale (int ,char*) ;
 int strlen (char const*) ;
 int usage (char*) ;

int main(int argc, char **argv) {

  int iterations = 1000000;
  if (argc > 1)
    iterations = atoi(argv[1]);
  if (iterations < 1)
    usage("Argument 1 (iterations) must be > 0.");


  const char *src = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus purus et risus vulputate, et mollis orci ullamcorper. Nulla facilisi. Fusce in ligula sed purus varius aliquet interdum vitae justo. Proin quis diam velit. Nulla varius iaculis auctor. Cras volutpat, justo eu dictum pulvinar, elit sem porttitor metus, et imperdiet metus sapien et ante. Nullam nisi nulla, ornare eu tristique eu, dignissim vitae diam. Nulla sagittis porta libero, a accumsan felis sagittis scelerisque.  Integer laoreet eleifend congue. Etiam rhoncus leo vel dolor fermentum, quis luctus nisl iaculis. Praesent a erat sapien. Aliquam semper mi in lorem ultrices ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In feugiat risus sed enim ultrices, at sodales nulla tristique. Maecenas eget pellentesque justo, sed pellentesque lectus. Fusce sagittis sit amet elit vel varius. Donec sed ligula nec ligula vulputate rutrum sed ut lectus. Etiam congue pharetra leo vitae cursus. Morbi enim ante, porttitor ut varius vel, tincidunt quis justo. Nunc iaculis, risus id ultrices semper, metus est efficitur ligula, vel posuere risus nunc eget purus. Ut lorem turpis, condimentum at sem sed, porta aliquam turpis. In ut sapien a nulla dictum tincidunt quis sit amet lorem. Fusce at est egestas, luctus neque eu, consectetur tortor. Phasellus eleifend ultricies nulla ac lobortis.  Morbi maximus quam cursus vehicula iaculis. Maecenas cursus vel justo ut rutrum. Curabitur magna orci, dignissim eget dapibus vitae, finibus id lacus. Praesent rhoncus mattis augue vitae bibendum. Praesent porta mauris non ultrices fermentum. Quisque vulputate ipsum in sodales pulvinar. Aliquam nec mollis felis. Donec vitae augue pulvinar, congue nisl sed, pretium purus. Fusce lobortis mi ac neque scelerisque semper. Pellentesque vel est vitae magna aliquet aliquet. Nam non dolor. Nulla facilisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi ac lacinia felis metus.";
  const char *hc_src = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";

  const size_t src_size = strlen(src) + 1;
  const size_t max_dst_size = LZ4_compressBound(src_size);
  int bytes_returned = 0;

  char *dst = calloc(1, max_dst_size);
  char *known_good_dst = calloc(1, max_dst_size);
  char *known_good_hc_dst = calloc(1, max_dst_size);
  if (dst == ((void*)0) || known_good_dst == ((void*)0) || known_good_hc_dst == ((void*)0))
    run_screaming("Couldn't allocate memory for the destination buffers.  Sad :(", 1);


  bytes_returned = LZ4_compress_default(src, known_good_dst, src_size, max_dst_size);
  if (bytes_returned < 1)
    run_screaming("Couldn't create a known-good destination buffer for comparison... this is bad.", 1);
  const size_t src_comp_size = bytes_returned;
  bytes_returned = LZ4_compress_default(hc_src, known_good_hc_dst, src_size, max_dst_size);
  if (bytes_returned < 1)
    run_screaming("Couldn't create a known-good (highly compressible) destination buffer for comparison... this is bad.", 1);
  const size_t hc_src_comp_size = bytes_returned;







  memset(dst, 0, max_dst_size);
  bytes_returned = LZ4_compress_fast(src, dst, src_size, max_dst_size, 1);
  if (bytes_returned < 1)
    run_screaming("Failed to compress src using LZ4_compress_fast.  echo $? for return code.", bytes_returned);
  if (memcmp(dst, known_good_dst, bytes_returned) != 0)
    run_screaming("According to memcmp(), the value we got in dst from LZ4_compress_fast doesn't match the known-good value.  This is bad.", 1);



  memset(dst, 0, max_dst_size);
  LZ4_stream_t state;
  bytes_returned = LZ4_compress_fast_extState(&state, src, dst, src_size, max_dst_size, 1);
  if (bytes_returned < 1)
    run_screaming("Failed to compress src using LZ4_compress_fast_extState.  echo $? for return code.", bytes_returned);
  if (memcmp(dst, known_good_dst, bytes_returned) != 0)
    run_screaming("According to memcmp(), the value we got in dst from LZ4_compress_fast_extState doesn't match the known-good value.  This is bad.", 1);
  char *dst_d = calloc(1, src_size);
  memset(dst, 0, max_dst_size);
  printf("\nStarting suite A:  Normal compressible text.\n");
  uint64_t time_taken__default = bench(known_good_dst, ID__LZ4_COMPRESS_DEFAULT, iterations, src, dst, src_size, max_dst_size, src_comp_size);
  uint64_t time_taken__fast = bench(known_good_dst, ID__LZ4_COMPRESS_FAST, iterations, src, dst, src_size, max_dst_size, src_comp_size);
  uint64_t time_taken__fast_extstate = bench(known_good_dst, ID__LZ4_COMPRESS_FAST_EXTSTATE, iterations, src, dst, src_size, max_dst_size, src_comp_size);

  uint64_t time_taken__decomp_safe = bench(src, ID__LZ4_DECOMPRESS_SAFE, iterations, known_good_dst, dst_d, src_size, max_dst_size, src_comp_size);
  uint64_t time_taken__decomp_fast = bench(src, ID__LZ4_DECOMPRESS_FAST, iterations, known_good_dst, dst_d, src_size, max_dst_size, src_comp_size);

  memset(dst, 0, max_dst_size);
  printf("\nStarting suite B:  Highly compressible text.\n");
  uint64_t time_taken_hc__default = bench(known_good_hc_dst, ID__LZ4_COMPRESS_DEFAULT, iterations, hc_src, dst, src_size, max_dst_size, hc_src_comp_size);
  uint64_t time_taken_hc__fast = bench(known_good_hc_dst, ID__LZ4_COMPRESS_FAST, iterations, hc_src, dst, src_size, max_dst_size, hc_src_comp_size);
  uint64_t time_taken_hc__fast_extstate = bench(known_good_hc_dst, ID__LZ4_COMPRESS_FAST_EXTSTATE, iterations, hc_src, dst, src_size, max_dst_size, hc_src_comp_size);

  uint64_t time_taken_hc__decomp_safe = bench(hc_src, ID__LZ4_DECOMPRESS_SAFE, iterations, known_good_hc_dst, dst_d, src_size, max_dst_size, hc_src_comp_size);
  uint64_t time_taken_hc__decomp_fast = bench(hc_src, ID__LZ4_DECOMPRESS_FAST, iterations, known_good_hc_dst, dst_d, src_size, max_dst_size, hc_src_comp_size);


  setlocale(LC_ALL, "");
  const char *format = "|%-14s|%-30s|%'14.9f|%'16d|%'14d|%'13.2f%%|\n";
  const char *header_format = "|%-14s|%-30s|%14s|%16s|%14s|%14s|\n";
  const char *separator = "+--------------+------------------------------+--------------+----------------+--------------+--------------+\n";
  printf("\n");
  printf("%s", separator);
  printf(header_format, "Source", "Function Benchmarked", "Total Seconds", "Iterations/sec", "ns/Iteration", "% of default");
  printf("%s", separator);
  printf(format, "Normal Text", "LZ4_compress_default()", (double)time_taken__default / BILLION, (int)(iterations / ((double)time_taken__default /BILLION)), (int)time_taken__default / iterations, (double)time_taken__default * 100 / time_taken__default);
  printf(format, "Normal Text", "LZ4_compress_fast()", (double)time_taken__fast / BILLION, (int)(iterations / ((double)time_taken__fast /BILLION)), (int)time_taken__fast / iterations, (double)time_taken__fast * 100 / time_taken__default);
  printf(format, "Normal Text", "LZ4_compress_fast_extState()", (double)time_taken__fast_extstate / BILLION, (int)(iterations / ((double)time_taken__fast_extstate /BILLION)), (int)time_taken__fast_extstate / iterations, (double)time_taken__fast_extstate * 100 / time_taken__default);

  printf(format, "Normal Text", "LZ4_decompress_safe()", (double)time_taken__decomp_safe / BILLION, (int)(iterations / ((double)time_taken__decomp_safe /BILLION)), (int)time_taken__decomp_safe / iterations, (double)time_taken__decomp_safe * 100 / time_taken__default);
  printf(format, "Normal Text", "LZ4_decompress_fast()", (double)time_taken__decomp_fast / BILLION, (int)(iterations / ((double)time_taken__decomp_fast /BILLION)), (int)time_taken__decomp_fast / iterations, (double)time_taken__decomp_fast * 100 / time_taken__default);
  printf(header_format, "", "", "", "", "", "");
  printf(format, "Compressible", "LZ4_compress_default()", (double)time_taken_hc__default / BILLION, (int)(iterations / ((double)time_taken_hc__default /BILLION)), (int)time_taken_hc__default / iterations, (double)time_taken_hc__default * 100 / time_taken_hc__default);
  printf(format, "Compressible", "LZ4_compress_fast()", (double)time_taken_hc__fast / BILLION, (int)(iterations / ((double)time_taken_hc__fast /BILLION)), (int)time_taken_hc__fast / iterations, (double)time_taken_hc__fast * 100 / time_taken_hc__default);
  printf(format, "Compressible", "LZ4_compress_fast_extState()", (double)time_taken_hc__fast_extstate / BILLION, (int)(iterations / ((double)time_taken_hc__fast_extstate /BILLION)), (int)time_taken_hc__fast_extstate / iterations, (double)time_taken_hc__fast_extstate * 100 / time_taken_hc__default);

  printf(format, "Compressible", "LZ4_decompress_safe()", (double)time_taken_hc__decomp_safe / BILLION, (int)(iterations / ((double)time_taken_hc__decomp_safe /BILLION)), (int)time_taken_hc__decomp_safe / iterations, (double)time_taken_hc__decomp_safe * 100 / time_taken_hc__default);
  printf(format, "Compressible", "LZ4_decompress_fast()", (double)time_taken_hc__decomp_fast / BILLION, (int)(iterations / ((double)time_taken_hc__decomp_fast /BILLION)), (int)time_taken_hc__decomp_fast / iterations, (double)time_taken_hc__decomp_fast * 100 / time_taken_hc__default);
  printf("%s", separator);
  printf("\n");
  printf("All done, ran %d iterations per test.\n", iterations);
  return 0;
}

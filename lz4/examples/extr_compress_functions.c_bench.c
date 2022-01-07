
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
typedef int LZ4_stream_t ;


 int BILLION ;
 int CLOCK_MONOTONIC ;





 int LZ4_compress_default (char const*,char*,size_t const,size_t const) ;
 int LZ4_compress_fast (char const*,char*,size_t const,size_t const,int const) ;
 int LZ4_compress_fast_extState (int *,char const*,char*,size_t const,size_t const,int const) ;
 int LZ4_decompress_fast (char const*,char*,size_t const) ;
 int LZ4_decompress_safe (char const*,char*,size_t const,size_t const) ;
 int clock_gettime (int ,struct timespec*) ;
 int memcmp (char const*,char*,size_t const) ;
 int printf (char*) ;
 int run_screaming (char*,int) ;

uint64_t bench(
    const char *known_good_dst,
    const int function_id,
    const int iterations,
    const char *src,
    char *dst,
    const size_t src_size,
    const size_t max_dst_size,
    const size_t comp_size
  ) {
  uint64_t time_taken = 0;
  int rv = 0;
  const int warm_up = 5000;
  struct timespec start, end;
  const int acceleration = 1;
  LZ4_stream_t state;



  switch(function_id) {
    case 132:
      printf("Starting benchmark for function: LZ4_compress_default()\n");
      for(int junk=0; junk<warm_up; junk++)
        rv = LZ4_compress_default(src, dst, src_size, max_dst_size);
      if (rv < 1)
        run_screaming("Couldn't run LZ4_compress_default()... error code received is in exit code.", rv);
      if (memcmp(known_good_dst, dst, max_dst_size) != 0)
        run_screaming("According to memcmp(), the compressed dst we got doesn't match the known_good_dst... ruh roh.", 1);
      clock_gettime(CLOCK_MONOTONIC, &start);
      for (int i=1; i<=iterations; i++)
        LZ4_compress_default(src, dst, src_size, max_dst_size);
      break;

    case 131:
      printf("Starting benchmark for function: LZ4_compress_fast()\n");
      for(int junk=0; junk<warm_up; junk++)
        rv = LZ4_compress_fast(src, dst, src_size, max_dst_size, acceleration);
      if (rv < 1)
        run_screaming("Couldn't run LZ4_compress_fast()... error code received is in exit code.", rv);
      if (memcmp(known_good_dst, dst, max_dst_size) != 0)
        run_screaming("According to memcmp(), the compressed dst we got doesn't match the known_good_dst... ruh roh.", 1);
      clock_gettime(CLOCK_MONOTONIC, &start);
      for (int i=1; i<=iterations; i++)
        LZ4_compress_fast(src, dst, src_size, max_dst_size, acceleration);
      break;

    case 130:
      printf("Starting benchmark for function: LZ4_compress_fast_extState()\n");
      for(int junk=0; junk<warm_up; junk++)
        rv = LZ4_compress_fast_extState(&state, src, dst, src_size, max_dst_size, acceleration);
      if (rv < 1)
        run_screaming("Couldn't run LZ4_compress_fast_extState()... error code received is in exit code.", rv);
      if (memcmp(known_good_dst, dst, max_dst_size) != 0)
        run_screaming("According to memcmp(), the compressed dst we got doesn't match the known_good_dst... ruh roh.", 1);
      clock_gettime(CLOCK_MONOTONIC, &start);
      for (int i=1; i<=iterations; i++)
        LZ4_compress_fast_extState(&state, src, dst, src_size, max_dst_size, acceleration);
      break;
    case 128:
      printf("Starting benchmark for function: LZ4_decompress_safe()\n");
      for(int junk=0; junk<warm_up; junk++)
        rv = LZ4_decompress_safe(src, dst, comp_size, src_size);
      if (rv < 1)
        run_screaming("Couldn't run LZ4_decompress_safe()... error code received is in exit code.", rv);
      if (memcmp(known_good_dst, dst, src_size) != 0)
        run_screaming("According to memcmp(), the compressed dst we got doesn't match the known_good_dst... ruh roh.", 1);
      clock_gettime(CLOCK_MONOTONIC, &start);
      for (int i=1; i<=iterations; i++)
        LZ4_decompress_safe(src, dst, comp_size, src_size);
      break;

    case 129:
      printf("Starting benchmark for function: LZ4_decompress_fast()\n");
      for(int junk=0; junk<warm_up; junk++)
        rv = LZ4_decompress_fast(src, dst, src_size);
      if (rv < 1)
        run_screaming("Couldn't run LZ4_decompress_fast()... error code received is in exit code.", rv);
      if (memcmp(known_good_dst, dst, src_size) != 0)
        run_screaming("According to memcmp(), the compressed dst we got doesn't match the known_good_dst... ruh roh.", 1);
      clock_gettime(CLOCK_MONOTONIC, &start);
      for (int i=1; i<=iterations; i++)
        LZ4_decompress_fast(src, dst, src_size);
      break;

    default:
      run_screaming("The test specified isn't valid.  Please check your code.", 1);
      break;
  }


  clock_gettime(CLOCK_MONOTONIC, &end);
  time_taken = BILLION *(end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec;

  return time_taken;
}

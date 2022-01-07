
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int mpg123_handle ;


 int MPG123_ADD_FLAGS ;
 int MPG123_OK ;
 int MPG123_QUIET ;
 int free (unsigned char*) ;
 char* fuzzer_get_tmpfile (int const*,size_t) ;
 int fuzzer_release_tmpfile (char*) ;
 scalar_t__ malloc (size_t) ;
 int mpg123_close (int *) ;
 int mpg123_delete (int *) ;
 int mpg123_init () ;
 int * mpg123_new (int *,int*) ;
 int mpg123_open (int *,char*) ;
 int mpg123_param (int *,int ,int ,int) ;
 int mpg123_read (int *,unsigned char*,size_t,size_t*) ;
 int mpg123_tell_stream (int *) ;
 int mpg123_tellframe (int *) ;

int LLVMFuzzerTestOneInput(const uint8_t* data, size_t size) {
  static bool initialized = 0;
  if (!initialized) {
    mpg123_init();
    initialized = 1;
  }
  char* filename = fuzzer_get_tmpfile(data, size);
  if (filename == ((void*)0)) {
    return 0;
  }

  size_t outmemorysize = size * 2;
  unsigned char* outmemory = (unsigned char*)malloc(outmemorysize);
  if (outmemory == ((void*)0)) {
    fuzzer_release_tmpfile(filename);
    return 0;
  }

  int error;
  mpg123_handle* handle = mpg123_new(((void*)0), &error);
  if (handle == ((void*)0) || mpg123_param(handle,
      MPG123_ADD_FLAGS, MPG123_QUIET, 0.) != MPG123_OK) {
    free(outmemory);
    fuzzer_release_tmpfile(filename);
    return 0;
  }

  if (mpg123_open(handle, filename) == MPG123_OK) {
    int read_error;
    do {
      size_t decoded_size;
      read_error = mpg123_read(handle, outmemory, outmemorysize, &decoded_size);
    } while (read_error == MPG123_OK && mpg123_tellframe(handle) <= 10000
          && mpg123_tell_stream(handle) <= 1<<20);
  }

  mpg123_close(handle);
  mpg123_delete(handle);
  free(outmemory);
  fuzzer_release_tmpfile(filename);
  return 0;
}

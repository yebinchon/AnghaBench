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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  mpg123_handle ;

/* Variables and functions */
 int /*<<< orphan*/  MPG123_ADD_FLAGS ; 
 int MPG123_OK ; 
 int /*<<< orphan*/  MPG123_QUIET ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 char* FUNC1 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int*) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,unsigned char*,size_t,size_t*) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(const uint8_t* data, size_t size) {
  static bool initialized = false;
  if (!initialized) {
    FUNC6();
    initialized = true;
  }
  char* filename = FUNC1(data, size);
  if (filename == NULL) {
    return 0;
  }

  size_t outmemorysize = size * 2;  // Guess based on the size of data.
  unsigned char* outmemory = (unsigned char*)FUNC3(outmemorysize);
  if (outmemory == NULL) {
    FUNC2(filename);
    return 0;
  }

  int error;
  mpg123_handle* handle = FUNC7(NULL, &error);
  if (handle == NULL || FUNC9(handle,
      MPG123_ADD_FLAGS, MPG123_QUIET, 0.) != MPG123_OK) {
    FUNC0(outmemory);
    FUNC2(filename);
    return 0;
  }

  if (FUNC8(handle, filename) == MPG123_OK) {
    int read_error;
    do {
      size_t decoded_size;
      read_error = FUNC10(handle, outmemory, outmemorysize, &decoded_size);
    } while (read_error == MPG123_OK && FUNC12(handle) <= 10000
          && FUNC11(handle) <= 1<<20);
  }

  FUNC4(handle);
  FUNC5(handle);
  FUNC0(outmemory);
  FUNC2(filename);
  return 0;
}
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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int const,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,size_t const,size_t) ; 
 size_t FUNC5 (int /*<<< orphan*/  const*,int,size_t,int /*<<< orphan*/ *) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC8 (char*) ; 

__attribute__((used)) static char* FUNC9(const uint8_t* data, size_t size) {
  char* filename_buffer = FUNC8("/tmp/generate_temporary_file.XXXXXX");
  if (!filename_buffer) {
    FUNC7("Failed to allocate file name buffer.");
    FUNC0();
  }
  const int file_descriptor = FUNC6(filename_buffer);
  if (file_descriptor < 0) {
    FUNC7("Failed to make temporary file.");
    FUNC0();
  }
  FILE* file = FUNC3(file_descriptor, "wb");
  if (!file) {
    FUNC7("Failed to open file descriptor.");
    FUNC1(file_descriptor);
    FUNC0();
  }
  const size_t bytes_written = FUNC5(data, sizeof(uint8_t), size, file);
  if (bytes_written < size) {
    FUNC1(file_descriptor);
    FUNC4(stderr, "Failed to write all bytes to file (%zu out of %zu)",
            bytes_written, size);
    FUNC0();
  }
  FUNC2(file);
  return filename_buffer;
}
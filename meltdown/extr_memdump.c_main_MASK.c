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
struct TYPE_4__ {int retries; int measurements; void* physical_offset; } ;
typedef  TYPE_1__ libkdump_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__) ; 
 size_t FUNC5 (size_t) ; 
 int FUNC6 (size_t) ; 
 char* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 scalar_t__ running ; 
 int /*<<< orphan*/  sigint ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 void* FUNC10 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC11(int argc, char *argv[]) {
  size_t phys = 1ull * 1024ull * 1024ull * 1024ull; // start at first gigabyte
  size_t size = (size_t)-1ULL;
  if (argc >= 2) {
    phys = FUNC10(argv[1], NULL, 0);
  }
  if (argc >= 3) {
    size = FUNC10(argv[2], NULL, 0);
  }

  int width = 16; // characters per line
  int suppress_empty = 1;

  libkdump_config_t config;
  config = FUNC3();
  config.retries = 10;
  config.measurements = 2;
  if (argc >= 4) {
    config.physical_offset = FUNC10(argv[3], NULL, 0);
  }

  FUNC4(config);

  size_t vaddr = FUNC5(phys);

  if (vaddr == -1ULL) {
    FUNC0(stderr, "Error converting physical to virtual address\n");
    return -1;
  }

  FUNC8(
      "\x1b[32;1m[+]\x1b[0m Physical address       : \x1b[33;1m0x%zx\x1b[0m\n", phys);
  FUNC8("\x1b[32;1m[+]\x1b[0m Physical offset        : \x1b[33;1m0x%zx\x1b[0m\n", config.physical_offset);
  FUNC8(
      "\x1b[32;1m[+]\x1b[0m Virtual address       : \x1b[33;1m0x%zx\x1b[0m\n", vaddr);

  if (width > size)
     width = size;

  size_t delta = 0;
  int i;
  char *buffer = FUNC7(width);

  FUNC9(SIGINT, sigint);

  while (running && delta < size) {
    int value = FUNC6(vaddr + delta);
    buffer[delta % width] = value;

    if (delta % width == width - 1) {
      int skip = 1;
      for (i = 0; i < width; i++) {
        if (buffer[i]) {
          skip = 0;
          break;
        }
      }
      if (skip && suppress_empty) {
        delta++;
        continue;
      }

      FUNC8("%10zx: ", delta + phys - (width - 1));
      FUNC8("| ");
      for (i = 0; i < width; i++) {
        FUNC8("%02x ", (unsigned char)buffer[i]);
      }
      FUNC8("| ");
      for (i = 0; i < width; i++) {
        FUNC8("%c", (buffer[i] >= 32 && buffer[i] <= 126) ? buffer[i] : '.');
      }
      FUNC8(" |\n");
    }
    delta++;
  }

  FUNC1(buffer);
  FUNC2();

  return 0;
}
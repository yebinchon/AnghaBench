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
struct TYPE_4__ {int physical_offset; } ;
typedef  TYPE_1__ libkdump_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__) ; 
 size_t FUNC4 (size_t) ; 
 int FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 void* FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC8(int argc, char *argv[]) {
  size_t phys;
  if (argc < 2) {
    FUNC6("Usage: %s <physical address> [<direct physical map>]\n", argv[0]);
    return 0;
  }

  phys = FUNC7(argv[1], NULL, 0);

  libkdump_config_t config;
  config = FUNC2();
  if (argc > 2) {
    config.physical_offset = FUNC7(argv[2], NULL, 0);
  }

  FUNC3(config);

  size_t vaddr = FUNC4(phys);

  FUNC6("\x1b[32;1m[+]\x1b[0m Physical address       : \x1b[33;1m0x%zx\x1b[0m\n", phys);
  FUNC6("\x1b[32;1m[+]\x1b[0m Physical offset        : \x1b[33;1m0x%zx\x1b[0m\n", config.physical_offset);
  FUNC6("\x1b[32;1m[+]\x1b[0m Reading virtual address: \x1b[33;1m0x%zx\x1b[0m\n\n", vaddr);

  while (1) {
    int value = FUNC5(vaddr);
    FUNC6("%c", value);
    FUNC0(stdout);
    vaddr++;
  }

  FUNC1();

  return 0;
}
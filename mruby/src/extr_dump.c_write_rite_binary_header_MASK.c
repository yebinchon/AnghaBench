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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct rite_binary_header {int* binary_crc; int /*<<< orphan*/  binary_size; int /*<<< orphan*/  compiler_version; int /*<<< orphan*/  compiler_name; int /*<<< orphan*/  binary_version; int /*<<< orphan*/  binary_ident; } ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
#define  DUMP_ENDIAN_BIG 130 
#define  DUMP_ENDIAN_LIL 129 
#define  DUMP_ENDIAN_NAT 128 
 int MRB_DUMP_OK ; 
 int /*<<< orphan*/  RITE_BINARY_FORMAT_VER ; 
 int /*<<< orphan*/  RITE_BINARY_IDENT ; 
 int /*<<< orphan*/  RITE_BINARY_IDENT_LIL ; 
 int /*<<< orphan*/  RITE_COMPILER_NAME ; 
 int /*<<< orphan*/  RITE_COMPILER_VERSION ; 
 size_t UINT32_MAX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(mrb_state *mrb, size_t binary_size, uint8_t *bin, uint8_t flags)
{
  struct rite_binary_header *header = (struct rite_binary_header *)bin;
  uint16_t crc;
  uint32_t offset;

  switch (flags & DUMP_ENDIAN_NAT) {
  endian_big:
  case DUMP_ENDIAN_BIG:
    FUNC2(header->binary_ident, RITE_BINARY_IDENT, sizeof(header->binary_ident));
    break;
  endian_little:
  case DUMP_ENDIAN_LIL:
    FUNC2(header->binary_ident, RITE_BINARY_IDENT_LIL, sizeof(header->binary_ident));
    break;

  case DUMP_ENDIAN_NAT:
    if (FUNC0()) goto endian_big;
    goto endian_little;
    break;
  }

  FUNC2(header->binary_version, RITE_BINARY_FORMAT_VER, sizeof(header->binary_version));
  FUNC2(header->compiler_name, RITE_COMPILER_NAME, sizeof(header->compiler_name));
  FUNC2(header->compiler_version, RITE_COMPILER_VERSION, sizeof(header->compiler_version));
  FUNC3(binary_size <= UINT32_MAX);
  FUNC5((uint32_t)binary_size, header->binary_size);

  offset = (uint32_t)((&(header->binary_crc[0]) - bin) + sizeof(uint16_t));
  crc = FUNC1(bin + offset, binary_size - offset, 0);
  FUNC4(crc, header->binary_crc);

  return MRB_DUMP_OK;
}
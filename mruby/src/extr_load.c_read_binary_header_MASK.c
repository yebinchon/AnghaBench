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
typedef  int /*<<< orphan*/  uint16_t ;
struct rite_binary_header {int /*<<< orphan*/  binary_size; int /*<<< orphan*/  binary_crc; int /*<<< orphan*/  binary_version; int /*<<< orphan*/  binary_ident; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_BYTEORDER_BIG ; 
 int /*<<< orphan*/  FLAG_BYTEORDER_LIL ; 
 int /*<<< orphan*/  FLAG_BYTEORDER_NATIVE ; 
 int MRB_DUMP_INVALID_FILE_HEADER ; 
 int MRB_DUMP_OK ; 
 int MRB_DUMP_READ_FAULT ; 
 int /*<<< orphan*/  RITE_BINARY_FORMAT_VER ; 
 int /*<<< orphan*/  RITE_BINARY_IDENT ; 
 int /*<<< orphan*/  RITE_BINARY_IDENT_LIL ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(const uint8_t *bin, size_t bufsize, size_t *bin_size, uint16_t *crc, uint8_t *flags)
{
  const struct rite_binary_header *header = (const struct rite_binary_header *)bin;

  if (bufsize < sizeof(struct rite_binary_header)) {
    return MRB_DUMP_READ_FAULT;
  }

  if (FUNC3(header->binary_ident, RITE_BINARY_IDENT, sizeof(header->binary_ident)) == 0) {
    if (FUNC0())
      *flags |= FLAG_BYTEORDER_NATIVE;
    else
      *flags |= FLAG_BYTEORDER_BIG;
  }
  else if (FUNC3(header->binary_ident, RITE_BINARY_IDENT_LIL, sizeof(header->binary_ident)) == 0) {
    if (FUNC0())
      *flags |= FLAG_BYTEORDER_LIL;
    else
      *flags |= FLAG_BYTEORDER_NATIVE;
  }
  else {
    return MRB_DUMP_INVALID_FILE_HEADER;
  }

  if (FUNC3(header->binary_version, RITE_BINARY_FORMAT_VER, sizeof(header->binary_version)) != 0) {
    return MRB_DUMP_INVALID_FILE_HEADER;
  }

  if (crc) {
    *crc = FUNC1(header->binary_crc);
  }
  *bin_size = (size_t)FUNC2(header->binary_size);

  if (bufsize < *bin_size) {
    return MRB_DUMP_READ_FAULT;
  }

  return MRB_DUMP_OK;
}
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
typedef  scalar_t__ uint16_t ;
struct rite_section_header {int /*<<< orphan*/  section_size; int /*<<< orphan*/  section_ident; } ;
struct rite_binary_header {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  mrb_irep ;

/* Variables and functions */
 int MRB_DUMP_OK ; 
 int /*<<< orphan*/  RITE_BINARY_EOF ; 
 int /*<<< orphan*/  RITE_SECTION_DEBUG_IDENT ; 
 int /*<<< orphan*/  RITE_SECTION_IREP_IDENT ; 
 int /*<<< orphan*/  RITE_SECTION_LV_IDENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 size_t FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/  const*,size_t,size_t*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_irep*
FUNC8(mrb_state *mrb, const uint8_t *bin, size_t bufsize, uint8_t flags)
{
  int result;
  mrb_irep *irep = NULL;
  const struct rite_section_header *section_header;
  uint16_t crc;
  size_t bin_size = 0;
  size_t n;

  if ((mrb == NULL) || (bin == NULL)) {
    return NULL;
  }

  result = FUNC4(bin, bufsize, &bin_size, &crc, &flags);
  if (result != MRB_DUMP_OK) {
    return NULL;
  }

  n = FUNC3();
  if (crc != FUNC1(bin + n, bin_size - n, 0)) {
    return NULL;
  }

  bin += sizeof(struct rite_binary_header);
  do {
    section_header = (const struct rite_section_header *)bin;
    if (FUNC2(section_header->section_ident, RITE_SECTION_IREP_IDENT, sizeof(section_header->section_ident)) == 0) {
      irep = FUNC6(mrb, bin, flags);
      if (!irep) return NULL;
    }
    else if (FUNC2(section_header->section_ident, RITE_SECTION_DEBUG_IDENT, sizeof(section_header->section_ident)) == 0) {
      if (!irep) return NULL;   /* corrupted data */
      result = FUNC5(mrb, bin, irep, flags);
      if (result < MRB_DUMP_OK) {
        return NULL;
      }
    }
    else if (FUNC2(section_header->section_ident, RITE_SECTION_LV_IDENT, sizeof(section_header->section_ident)) == 0) {
      if (!irep) return NULL;
      result = FUNC7(mrb, bin, irep, flags);
      if (result < MRB_DUMP_OK) {
        return NULL;
      }
    }
    bin += FUNC0(section_header->section_size);
  } while (FUNC2(section_header->section_ident, RITE_BINARY_EOF, sizeof(section_header->section_ident)) != 0);

  return irep;
}
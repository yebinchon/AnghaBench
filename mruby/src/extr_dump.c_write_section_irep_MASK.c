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
struct rite_section_irep_header {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  mrb_irep ;

/* Variables and functions */
 int MRB_DUMP_INVALID_ARGUMENT ; 
 int MRB_DUMP_OK ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(mrb_state *mrb, mrb_irep *irep, uint8_t *bin, size_t *len_p, uint8_t flags)
{
  int result;
  size_t rsize = 0;
  uint8_t *cur = bin;

  if (mrb == NULL || bin == NULL) {
    return MRB_DUMP_INVALID_ARGUMENT;
  }

  cur += sizeof(struct rite_section_irep_header);

  result = FUNC0(mrb, irep, cur, &rsize, flags);
  if (result != MRB_DUMP_OK) {
    return result;
  }
  *len_p = cur - bin + rsize;
  FUNC1(mrb, *len_p, bin);

  return MRB_DUMP_OK;
}
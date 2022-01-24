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
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  mrb_irep ;
typedef  int /*<<< orphan*/  bin ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_BYTEORDER_NONATIVE ; 
 int MRB_DUMP_INVALID_ARGUMENT ; 
 int MRB_DUMP_OK ; 
 int MRB_DUMP_WRITE_FAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t*) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC4(mrb_state *mrb, mrb_irep *irep, uint8_t flags, FILE* fp)
{
  uint8_t *bin = NULL;
  size_t bin_size = 0;
  int result;

  if (fp == NULL) {
    return MRB_DUMP_INVALID_ARGUMENT;
  }

  result = FUNC1(mrb, irep, FUNC0(flags, FLAG_BYTEORDER_NONATIVE), &bin, &bin_size);
  if (result == MRB_DUMP_OK) {
    if (FUNC2(bin, sizeof(bin[0]), bin_size, fp) != bin_size) {
      result = MRB_DUMP_WRITE_FAULT;
    }
  }

  FUNC3(mrb, bin);
  return result;
}
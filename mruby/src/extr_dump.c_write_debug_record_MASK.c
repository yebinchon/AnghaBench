#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  mrb_sym ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_5__ {int rlen; struct TYPE_5__** reps; } ;
typedef  TYPE_1__ mrb_irep ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t
FUNC3(mrb_state *mrb, mrb_irep *irep, uint8_t *bin, mrb_sym const* filenames, uint16_t filenames_len)
{
  size_t size, len;
  int irep_no;

  size = len = FUNC2(mrb, irep, bin, filenames, filenames_len);
  bin += len;
  for (irep_no = 0; irep_no < irep->rlen; irep_no++) {
    len = FUNC3(mrb, irep->reps[irep_no], bin, filenames, filenames_len);
    bin += len;
    size += len;
  }

  FUNC1(size == FUNC0(mrb, irep));
  return size;
}
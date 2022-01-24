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

/* Variables and functions */
 int /*<<< orphan*/  FLAG_SRC_MALLOC ; 
 int /*<<< orphan*/  FLAG_SRC_STATIC ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ) ; 

mrb_irep*
FUNC2(mrb_state *mrb, const uint8_t *bin)
{
#if defined(MRB_USE_LINK_TIME_RO_DATA_P) || defined(MRB_USE_CUSTOM_RO_DATA_P)
  uint8_t flags = mrb_ro_data_p((char*)bin) ? FLAG_SRC_STATIC : FLAG_SRC_MALLOC;
#else
  uint8_t flags = FLAG_SRC_STATIC;
#endif

  return FUNC1(mrb, bin, (size_t)-1, flags);
}
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
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  mrb_bool ;

/* Variables and functions */
 int /*<<< orphan*/  ENC_ASCII_8BIT ; 
 int /*<<< orphan*/  ENC_BINARY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENC_UTF8 ; 
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC6(mrb_state *mrb, mrb_value num)
{
  mrb_value enc;
  mrb_bool enc_given;

  FUNC3(mrb, "|S?", &enc, &enc_given);
  if (!enc_given ||
      FUNC0(enc, ENC_ASCII_8BIT) ||
      FUNC0(enc, ENC_BINARY)) {
    return FUNC1(mrb, num);
  }
#ifdef MRB_UTF8_STRING
  else if (ENC_COMP_P(enc, ENC_UTF8)) {
    return int_chr_utf8(mrb, num);
  }
#endif
  else {
    FUNC5(mrb, E_ARGUMENT_ERROR, "unknown encoding name - %v", enc);
  }
  /* not reached */
  return FUNC4();
}
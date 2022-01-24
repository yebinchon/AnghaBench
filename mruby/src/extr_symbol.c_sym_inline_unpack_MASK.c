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
typedef  int uint32_t ;
typedef  int mrb_sym ;
typedef  int mrb_int ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int SYMBOL_INLINE_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* pack_table ; 

__attribute__((used)) static const char*
FUNC3(mrb_sym sym, char *buf, mrb_int *lenp)
{
  int bit_per_char = FUNC0(sym) ? 5 : 6;
  int i;

  FUNC2(FUNC1(sym));

  for (i=0; i<30/bit_per_char; i++) {
    uint32_t bits = sym>>(i*bit_per_char+SYMBOL_INLINE_SHIFT) & ((1<<bit_per_char)-1);
    if (bits == 0) break;
    buf[i] = pack_table[bits-1];;
  }
  buf[i] = '\0';
  if (lenp) *lenp = i;
  return buf;
}
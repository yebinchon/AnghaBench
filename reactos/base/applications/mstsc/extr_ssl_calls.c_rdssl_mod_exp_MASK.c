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
typedef  int DIGIT_T ;

/* Variables and functions */
 int HIBITMASK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int) ; 
 unsigned int FUNC6 (int*,int) ; 

int
FUNC7(char* out, int out_len, char* in, int in_len,
              char* mod, int mod_len, char* exp, int exp_len)
{
  /* Computes y = x ^ e mod m */
  /* Binary left-to-right method */
  DIGIT_T mask;
  DIGIT_T* e;
  DIGIT_T* x;
  DIGIT_T* y;
  DIGIT_T* m;
  unsigned int n;
  int max_size;
  char* l_out;
  char* l_in;
  char* l_mod;
  char* l_exp;

  if (in_len > out_len || in_len == 0 ||
      out_len == 0 || mod_len == 0 || exp_len == 0)
  {
    return 0;
  }
  max_size = out_len;
  if (in_len > max_size)
  {
    max_size = in_len;
  }
  if (mod_len > max_size)
  {
    max_size = mod_len;
  }
  if (exp_len > max_size)
  {
    max_size = exp_len;
  }
  l_out = (char*)FUNC1(max_size, 1);
  l_in = (char*)FUNC1(max_size, 1);
  l_mod = (char*)FUNC1(max_size, 1);
  l_exp = (char*)FUNC1(max_size, 1);
  FUNC2(l_in, in, in_len);
  FUNC2(l_mod, mod, mod_len);
  FUNC2(l_exp, exp, exp_len);
  e = (DIGIT_T*)l_exp;
  x = (DIGIT_T*)l_in;
  y = (DIGIT_T*)l_out;
  m = (DIGIT_T*)l_mod;
  /* Find second-most significant bit in e */
  n = FUNC6(e, max_size / 4);
  for (mask = HIBITMASK; mask > 0; mask >>= 1)
  {
    if (e[n - 1] & mask)
    {
      break;
    }
  }
  FUNC4(mask, n);
  /* Set y = x */
  FUNC5(y, x, max_size / 4);
  /* For bit j = k - 2 downto 0 step -1 */
  while (n)
  {
    FUNC3(y, y, y, m, max_size / 4); /* Square */
    if (e[n - 1] & mask)
    {
      FUNC3(y, y, x, m, max_size / 4); /* Multiply */
    }
    /* Move to next bit */
    FUNC4(mask, n);
  }
  FUNC2(out, l_out, out_len);
  FUNC0(l_out);
  FUNC0(l_in);
  FUNC0(l_mod);
  FUNC0(l_exp);
  return out_len;
}
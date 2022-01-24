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

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 

char *FUNC1 (char *in)
{
  if (!in)
    return "";

  char *out = 0;
  while (*in)
  {
    if (!out && !FUNC0 (*in))
      out = in;
    ++in;
  }
  if (!out)
    return "";
  while (--in > out && FUNC0 (*in))
    ;
  in[1] = 0;
  return out;
}
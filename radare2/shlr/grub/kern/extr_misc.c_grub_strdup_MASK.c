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
typedef  scalar_t__ grub_size_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 char* FUNC1 (char*,char const*,scalar_t__) ; 
 scalar_t__ FUNC2 (char const*) ; 

char *
FUNC3 (const char *s)
{
  grub_size_t len;
  char *p;

  len = FUNC2 (s) + 1;
  p = (char *) FUNC0 (len);
  if (! p)
    return 0;

  return FUNC1 (p, s, len);
}
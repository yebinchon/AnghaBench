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
typedef  int grub_size_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int FUNC2 (char const*) ; 

char *
FUNC3 (const char *s, grub_size_t n)
{
  grub_size_t len;
  char *p;

  len = FUNC2 (s);
  if (len > n)
    len = n;
  p = (char *) FUNC0 (len + 1);
  if (! p)
    return 0;

  FUNC1 (p, s, len);
  p[len] = '\0';
  return p;
}
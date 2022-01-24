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
 size_t FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,size_t) ; 

const char *FUNC2(const char *s, const char *find, size_t slen) {
  size_t find_length = FUNC0(find);
  size_t i;

  for (i = 0; i < slen; i++) {
    if (i + find_length > slen) {
      return NULL;
    }

    if (FUNC1(&s[i], find, find_length) == 0) {
      return &s[i];
    }
  }

  return NULL;
}
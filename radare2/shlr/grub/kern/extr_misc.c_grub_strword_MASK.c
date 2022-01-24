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
 scalar_t__ FUNC0 (char const) ; 

int
FUNC1 (const char *haystack, const char *needle)
{
  const char *n_pos = needle;

  while (FUNC0 (*haystack))
    haystack++;

  while (*haystack)
    {
      /* Crawl both the needle and the haystack word we're on.  */
      while(*haystack && !FUNC0 (*haystack)
            && *haystack == *n_pos)
        {
          haystack++;
          n_pos++;
        }

      /* If we reached the end of both words at the same time, the word
      is found. If not, eat everything in the haystack that isn't the
      next word (or the end of string) and "reset" the needle.  */
      if ( (!*haystack || FUNC0 (*haystack))
         && (!*n_pos || FUNC0 (*n_pos)))
        return 1;
      else
        {
          n_pos = needle;
          while (*haystack && !FUNC0 (*haystack))
            haystack++;
          while (FUNC0 (*haystack))
            haystack++;
        }
    }

  return 0;
}
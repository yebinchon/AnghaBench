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
 char* FUNC0 (char const*,char) ; 

const char *FUNC1( const char *path )
{
  const char *basename;

  // deduce basename (incl. extension) for length check
  if ((basename = FUNC0( path, '/' ))) {
    basename++;
  } else if ((basename = FUNC0( path, ':' ))) {
    basename++;
  } else {
    basename = path;
  }

  return basename;
}
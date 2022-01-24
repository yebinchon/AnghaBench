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
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 

__attribute__((used)) static void
FUNC1(const char *name)
{
  static const char *const usage_msg[] = {
  "switches:",
  "-c           check syntax only",
  "-o<outfile>  place the output into <outfile>",
  "-v           print version number, then turn on verbose mode",
  "-g           produce debugging information",
  "-B<symbol>   binary <symbol> output in C language format",
  "-e           generate little endian iseq data",
  "-E           generate big endian iseq data",
  "--remove-lv  remove local variables",
  "--verbose    run at verbose mode",
  "--version    print the version",
  "--copyright  print the copyright",
  NULL
  };
  const char *const *p = usage_msg;

  FUNC0("Usage: %s [switches] programfile\n", name);
  while (*p)
    FUNC0("  %s\n", *p++);
}
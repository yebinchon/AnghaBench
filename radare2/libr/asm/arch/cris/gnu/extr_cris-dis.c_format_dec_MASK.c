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
 long last_immediate ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,long) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static char *
FUNC2 (long number, char *outbuffer, int signedp)
{
  last_immediate = number;
  FUNC0 (outbuffer, signedp ? "%ld" : "%lu", number);

  return outbuffer + FUNC1 (outbuffer);
}
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

__attribute__((used)) static bool FUNC1(const char *hostname, size_t len)
{
  //the hostname must be 32 chars or less and first and last char must be alphanumeric
  if (len == 0 || len > 32 || !FUNC0(hostname[0]) || !FUNC0(hostname[len-1])){
    return false;
  }
  //characters in the middle of the host name must be alphanumeric or a hyphen(-) only
  for (int i=1; i<len; i++){
    if (!(FUNC0(hostname[i]) || hostname[i]=='-')){
      return false;
    }
  }

  return true;
}
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
 int FUNC0 (unsigned int,char const*,int) ; 
 int FUNC1 (char const*) ; 

int FUNC2(unsigned BufferIndex, const char* s) {
  int Len;

  Len = FUNC1(s);
  return FUNC0(BufferIndex, s, Len);
}
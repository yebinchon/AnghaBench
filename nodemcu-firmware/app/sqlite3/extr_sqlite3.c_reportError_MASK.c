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
 int /*<<< orphan*/  FUNC0 (int,char*,char const*,int,scalar_t__) ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static int FUNC2(int iErr, int lineno, const char *zType){
  FUNC0(iErr, "%s at line %d of [%.10s]",
              zType, lineno, 20+FUNC1());
  return iErr;
}
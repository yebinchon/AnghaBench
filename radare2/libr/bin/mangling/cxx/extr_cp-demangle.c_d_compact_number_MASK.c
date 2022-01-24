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
struct d_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct d_info*,char) ; 
 int FUNC1 (struct d_info*) ; 
 char FUNC2 (struct d_info*) ; 

__attribute__((used)) static int
FUNC3 (struct d_info *di)
{
  int num;
  if (FUNC2 (di) == '_')
    num = 0;
  else if (FUNC2 (di) == 'n')
    return -1;
  else
    num = FUNC1 (di) + 1;

  if (num < 0 || ! FUNC0 (di, '_'))
    return -1;
  return num;
}
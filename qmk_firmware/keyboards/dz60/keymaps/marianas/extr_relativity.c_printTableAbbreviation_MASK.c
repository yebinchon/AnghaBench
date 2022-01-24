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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int* tableNameList ; 
 int tableNameListLen ; 

void FUNC1(void)
{
  if (tableNameList[0] == 0)
  {
    return;
  }
  FUNC0(0x20);
  int i = 0;
  for (i = 0; i < tableNameListLen && tableNameList[i] > 0; i++)
  {
    if (tableNameList[i] >= 65 && tableNameList[i] <= 90)
    {
      FUNC0(tableNameList[i]+32);
    }
    else
    {
      FUNC0(tableNameList[i]);
    }
  }
  FUNC0(0x20);
}
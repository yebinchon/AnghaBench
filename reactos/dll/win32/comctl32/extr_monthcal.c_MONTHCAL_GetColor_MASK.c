#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_4__ {int* colors; } ;
typedef  TYPE_1__ MONTHCAL_INFO ;
typedef  int COLORREF ;

/* Variables and functions */
 size_t MCSC_TRAILINGTEXT ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__ const*,size_t) ; 

__attribute__((used)) static COLORREF
FUNC1(const MONTHCAL_INFO *infoPtr, UINT index)
{
  FUNC0("%p, %d\n", infoPtr, index);

  if (index > MCSC_TRAILINGTEXT) return -1;
  return infoPtr->colors[index];
}
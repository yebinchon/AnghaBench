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
typedef  int UCHAR ;
typedef  int /*<<< orphan*/  PUCHAR ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static UCHAR
FUNC2(UCHAR Reg)
{
  UCHAR Val;
  Reg |= 0x80;

  FUNC1((PUCHAR)0x70, Reg);
  Val = FUNC0((PUCHAR)0x71);
  FUNC1((PUCHAR)0x70, 0);

  return(Val);
}
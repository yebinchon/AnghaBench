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
typedef  int /*<<< orphan*/  SIZE_T ;
typedef  int /*<<< orphan*/  PSTR ;
typedef  int /*<<< orphan*/  PCSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

PCSTR FUNC2(PCSTR szString, SIZE_T stringLengthIncludingNullTerm)
{
    PSTR NewString = FUNC0(stringLengthIncludingNullTerm);
    FUNC1(NewString, stringLengthIncludingNullTerm, szString);
    return NewString;
}
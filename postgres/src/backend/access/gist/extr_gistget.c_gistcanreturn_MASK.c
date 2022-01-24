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
typedef  int /*<<< orphan*/  Relation ;

/* Variables and functions */
 int /*<<< orphan*/  GIST_COMPRESS_PROC ; 
 int /*<<< orphan*/  GIST_FETCH_PROC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

bool
FUNC3(Relation index, int attno)
{
	if (attno > FUNC0(index) ||
		FUNC1(FUNC2(index, attno, GIST_FETCH_PROC)) ||
		!FUNC1(FUNC2(index, attno, GIST_COMPRESS_PROC)))
		return true;
	else
		return false;
}
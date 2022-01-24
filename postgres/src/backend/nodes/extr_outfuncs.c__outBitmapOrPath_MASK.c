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
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Path ;
typedef  int /*<<< orphan*/  BitmapOrPath ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  bitmapquals ; 
 int /*<<< orphan*/  bitmapselectivity ; 

__attribute__((used)) static void
FUNC4(StringInfo str, const BitmapOrPath *node)
{
	FUNC2("BITMAPORPATH");

	FUNC3(str, (const Path *) node);

	FUNC1(bitmapquals);
	FUNC0(bitmapselectivity, "%.4f");
}
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
typedef  int /*<<< orphan*/  AlterTSConfigurationStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cfgname ; 
 int /*<<< orphan*/  dicts ; 
 int /*<<< orphan*/  kind ; 
 int /*<<< orphan*/  missing_ok ; 
 int /*<<< orphan*/  override ; 
 int /*<<< orphan*/  replace ; 
 int /*<<< orphan*/  tokentype ; 

__attribute__((used)) static bool
FUNC2(const AlterTSConfigurationStmt *a,
							   const AlterTSConfigurationStmt *b)
{
	FUNC1(kind);
	FUNC0(cfgname);
	FUNC0(tokentype);
	FUNC0(dicts);
	FUNC1(override);
	FUNC1(replace);
	FUNC1(missing_ok);

	return true;
}
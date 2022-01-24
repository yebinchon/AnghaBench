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
typedef  int /*<<< orphan*/  ImportForeignSchemaStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list_type ; 
 int /*<<< orphan*/  local_schema ; 
 int /*<<< orphan*/  options ; 
 int /*<<< orphan*/  remote_schema ; 
 int /*<<< orphan*/  server_name ; 
 int /*<<< orphan*/  table_list ; 

__attribute__((used)) static bool
FUNC3(const ImportForeignSchemaStmt *a, const ImportForeignSchemaStmt *b)
{
	FUNC2(server_name);
	FUNC2(remote_schema);
	FUNC2(local_schema);
	FUNC1(list_type);
	FUNC0(table_list);
	FUNC0(options);

	return true;
}
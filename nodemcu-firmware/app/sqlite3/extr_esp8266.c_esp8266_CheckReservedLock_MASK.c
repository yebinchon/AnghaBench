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
typedef  int /*<<< orphan*/  sqlite3_file ;
typedef  int /*<<< orphan*/  esp8266_file ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static int FUNC1(sqlite3_file *id, int *result)
{
	esp8266_file *file = (esp8266_file*) id;

	*result = 0;

	FUNC0("esp8266_CheckReservedLock:\n");
	return SQLITE_OK;
}
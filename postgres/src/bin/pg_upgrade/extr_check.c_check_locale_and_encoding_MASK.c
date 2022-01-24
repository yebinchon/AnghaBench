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
struct TYPE_4__ {scalar_t__ db_encoding; int /*<<< orphan*/  db_ctype; int /*<<< orphan*/  db_name; int /*<<< orphan*/  db_collate; } ;
typedef  TYPE_1__ DbInfo ;

/* Variables and functions */
 int /*<<< orphan*/  LC_COLLATE ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(DbInfo *olddb, DbInfo *newdb)
{
	if (olddb->db_encoding != newdb->db_encoding)
		FUNC2("encodings for database \"%s\" do not match:  old \"%s\", new \"%s\"\n",
				 olddb->db_name,
				 FUNC1(olddb->db_encoding),
				 FUNC1(newdb->db_encoding));
	if (!FUNC0(LC_COLLATE, olddb->db_collate, newdb->db_collate))
		FUNC2("lc_collate values for database \"%s\" do not match:  old \"%s\", new \"%s\"\n",
				 olddb->db_name, olddb->db_collate, newdb->db_collate);
	if (!FUNC0(LC_CTYPE, olddb->db_ctype, newdb->db_ctype))
		FUNC2("lc_ctype values for database \"%s\" do not match:  old \"%s\", new \"%s\"\n",
				 olddb->db_name, olddb->db_ctype, newdb->db_ctype);
}
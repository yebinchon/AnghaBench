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
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int SEPG_DB_SCHEMA__ADD_NAME ; 
 int SEPG_DB_SCHEMA__REMOVE_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 

void
FUNC1(Oid namespaceId)
{
	FUNC0(namespaceId,
					   SEPG_DB_SCHEMA__ADD_NAME |
					   SEPG_DB_SCHEMA__REMOVE_NAME,
					   true);
}
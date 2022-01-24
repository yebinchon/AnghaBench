#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * s; } ;
struct TYPE_4__ {TYPE_1__ info_or_local_file; } ;
typedef  TYPE_2__ MYSQLND_PACKET_RSET_HEADER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DBG_VOID_RETURN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
void FUNC2(void * _packet)
{
	MYSQLND_PACKET_RSET_HEADER *p= (MYSQLND_PACKET_RSET_HEADER *) _packet;
	FUNC0("php_mysqlnd_rset_header_free_mem");
	if (p->info_or_local_file.s) {
		FUNC1(p->info_or_local_file.s);
		p->info_or_local_file.s = NULL;
	}
	DBG_VOID_RETURN;
}
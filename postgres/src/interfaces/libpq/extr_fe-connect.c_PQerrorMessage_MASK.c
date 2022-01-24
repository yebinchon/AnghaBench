#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* data; } ;
struct TYPE_5__ {TYPE_1__ errorMessage; } ;
typedef  TYPE_2__ PGconn ;

/* Variables and functions */
 char* FUNC0 (char*) ; 

char *
FUNC1(const PGconn *conn)
{
	if (!conn)
		return FUNC0("connection pointer is NULL\n");

	return conn->errorMessage.data;
}
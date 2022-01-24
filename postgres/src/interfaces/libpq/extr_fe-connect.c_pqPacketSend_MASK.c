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
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int STATUS_ERROR ; 
 int STATUS_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (void const*,size_t,int /*<<< orphan*/ *) ; 

int
FUNC4(PGconn *conn, char pack_type,
			 const void *buf, size_t buf_len)
{
	/* Start the message. */
	if (FUNC2(pack_type, true, conn))
		return STATUS_ERROR;

	/* Send the message body. */
	if (FUNC3(buf, buf_len, conn))
		return STATUS_ERROR;

	/* Finish the message. */
	if (FUNC1(conn))
		return STATUS_ERROR;

	/* Flush to ensure backend gets it. */
	if (FUNC0(conn))
		return STATUS_ERROR;

	return STATUS_OK;
}
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
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_CTRL_DGRAM_SCTP_WAIT_FOR_DRY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC1(BIO *b)
{
    return (int)FUNC0(b, BIO_CTRL_DGRAM_SCTP_WAIT_FOR_DRY, 0, NULL);
}
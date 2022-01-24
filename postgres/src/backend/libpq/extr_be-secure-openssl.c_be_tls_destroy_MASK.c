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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * SSL_context ; 
 int ssl_loaded_verify_locations ; 

void
FUNC1(void)
{
	if (SSL_context)
		FUNC0(SSL_context);
	SSL_context = NULL;
	ssl_loaded_verify_locations = false;
}
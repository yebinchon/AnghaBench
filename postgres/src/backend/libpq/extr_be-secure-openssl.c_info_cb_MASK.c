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
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG4 ; 
#define  SSL_CB_ACCEPT_EXIT 135 
#define  SSL_CB_ACCEPT_LOOP 134 
#define  SSL_CB_CONNECT_EXIT 133 
#define  SSL_CB_CONNECT_LOOP 132 
#define  SSL_CB_HANDSHAKE_DONE 131 
#define  SSL_CB_HANDSHAKE_START 130 
#define  SSL_CB_READ_ALERT 129 
#define  SSL_CB_WRITE_ALERT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(const SSL *ssl, int type, int args)
{
	switch (type)
	{
		case SSL_CB_HANDSHAKE_START:
			FUNC0(DEBUG4,
					(FUNC1("SSL: handshake start")));
			break;
		case SSL_CB_HANDSHAKE_DONE:
			FUNC0(DEBUG4,
					(FUNC1("SSL: handshake done")));
			break;
		case SSL_CB_ACCEPT_LOOP:
			FUNC0(DEBUG4,
					(FUNC1("SSL: accept loop")));
			break;
		case SSL_CB_ACCEPT_EXIT:
			FUNC0(DEBUG4,
					(FUNC1("SSL: accept exit (%d)", args)));
			break;
		case SSL_CB_CONNECT_LOOP:
			FUNC0(DEBUG4,
					(FUNC1("SSL: connect loop")));
			break;
		case SSL_CB_CONNECT_EXIT:
			FUNC0(DEBUG4,
					(FUNC1("SSL: connect exit (%d)", args)));
			break;
		case SSL_CB_READ_ALERT:
			FUNC0(DEBUG4,
					(FUNC1("SSL: read alert (0x%04x)", args)));
			break;
		case SSL_CB_WRITE_ALERT:
			FUNC0(DEBUG4,
					(FUNC1("SSL: write alert (0x%04x)", args)));
			break;
	}
}
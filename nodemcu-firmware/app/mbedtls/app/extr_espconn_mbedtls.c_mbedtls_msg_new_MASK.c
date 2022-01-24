#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* pmbedtls_msg ;
typedef  int /*<<< orphan*/  mbedtls_msg ;
struct TYPE_5__ {int /*<<< orphan*/  conf; int /*<<< orphan*/  entropy; int /*<<< orphan*/  ctr_drbg; int /*<<< orphan*/  ssl; int /*<<< orphan*/  fd; int /*<<< orphan*/  listen_fd; scalar_t__ psession; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSL_MAX_FRAGMENT_LENGTH_CODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static pmbedtls_msg FUNC10(void)
{
	pmbedtls_msg msg = (pmbedtls_msg)FUNC9( sizeof(mbedtls_msg));
	if (msg) {
		FUNC7(msg, sizeof(mbedtls_msg));
		msg->psession = FUNC3();
		if (msg->psession){
			FUNC2(&msg->listen_fd);
			FUNC2(&msg->fd);
			FUNC6(&msg->ssl);
			FUNC5(&msg->conf);
			FUNC0(&msg->ctr_drbg);
			FUNC1(&msg->entropy);
#if defined(MBEDTLS_SSL_MAX_FRAGMENT_LENGTH) && defined(SSL_MAX_FRAGMENT_LENGTH_CODE)
			mbedtls_ssl_conf_max_frag_len(&msg->conf, SSL_MAX_FRAGMENT_LENGTH_CODE);
#endif
		} else{
			FUNC8(msg);
			msg = NULL;
		}
	}
	return msg;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* pmbedtls_msg ;
typedef  int /*<<< orphan*/  mbedtls_msg ;
struct TYPE_8__ {int /*<<< orphan*/ * out_buf; } ;
struct TYPE_7__ {int /*<<< orphan*/  entropy; int /*<<< orphan*/  ctr_drbg; int /*<<< orphan*/  conf; TYPE_3__ ssl; int /*<<< orphan*/  fd; scalar_t__ psession; scalar_t__ quiet; } ;

/* Variables and functions */
 int /*<<< orphan*/  MBEDTLS_SSL_OUTBUFFER_LEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(pmbedtls_msg msg)
{
	FUNC0(msg);

	/*to prevent memory leaks, ensure that each allocated is deleted at every handshake*/
	if (msg->psession){
		FUNC6(&msg->psession);
	}
#if defined(ESP8266_PLATFORM)
    if (msg->quiet && msg->ssl.out_buf)
    {
        mbedtls_zeroize(msg->ssl.out_buf, MBEDTLS_SSL_OUTBUFFER_LEN);
        os_free(msg->ssl.out_buf);
        msg->ssl.out_buf = NULL;
    }
#endif
	FUNC3(&msg->entropy);
	FUNC10(&msg->ssl);
	FUNC8(&msg->conf);
	FUNC1(&msg->ctr_drbg);

	/*New connection ensure that each initial for next handshake */
	FUNC13(msg, sizeof(mbedtls_msg));
	msg->psession = FUNC7();
	if (msg->psession){
		FUNC5(&msg->fd);
		FUNC11(&msg->ssl);
		FUNC9(&msg->conf);
		FUNC2(&msg->ctr_drbg);
		FUNC4(&msg->entropy);
	}
}
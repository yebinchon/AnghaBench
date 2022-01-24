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
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(BIO *bio, SSL_CTX *ssl_ctx)
{
    FUNC0(bio, "%4ld items in the session cache\n",
               FUNC12(ssl_ctx));
    FUNC0(bio, "%4ld client connects (SSL_connect())\n",
               FUNC6(ssl_ctx));
    FUNC0(bio, "%4ld client renegotiates (SSL_connect())\n",
               FUNC8(ssl_ctx));
    FUNC0(bio, "%4ld client connects that finished\n",
               FUNC7(ssl_ctx));
    FUNC0(bio, "%4ld server accepts (SSL_accept())\n",
               FUNC1(ssl_ctx));
    FUNC0(bio, "%4ld server renegotiates (SSL_accept())\n",
               FUNC3(ssl_ctx));
    FUNC0(bio, "%4ld server accepts that finished\n",
               FUNC2(ssl_ctx));
    FUNC0(bio, "%4ld session cache hits\n", FUNC10(ssl_ctx));
    FUNC0(bio, "%4ld session cache misses\n",
               FUNC11(ssl_ctx));
    FUNC0(bio, "%4ld session cache timeouts\n",
               FUNC13(ssl_ctx));
    FUNC0(bio, "%4ld callback cache hits\n",
               FUNC5(ssl_ctx));
    FUNC0(bio, "%4ld cache full overflows (%ld allowed)\n",
               FUNC4(ssl_ctx),
               FUNC9(ssl_ctx));
}
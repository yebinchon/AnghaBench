#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * hostname; int /*<<< orphan*/ * session; int /*<<< orphan*/ * session_negotiate; int /*<<< orphan*/ * transform_negotiate; int /*<<< orphan*/ * handshake; } ;
typedef  TYPE_1__ mbedtls_ssl_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(mbedtls_ssl_context *ssl)
{
	FUNC0(ssl);
	if( ssl->handshake )
    {
        FUNC1( ssl->handshake );
        FUNC3( ssl->transform_negotiate );
        FUNC2( ssl->session_negotiate );

        FUNC5( ssl->handshake );
        FUNC5( ssl->transform_negotiate );
        FUNC5( ssl->session_negotiate );
		ssl->handshake = NULL;
		ssl->transform_negotiate = NULL;
		ssl->session_negotiate = NULL;
    }

    if( ssl->session )
    {
        FUNC2( ssl->session );
        FUNC5( ssl->session );
		ssl->session = NULL;
    }

#if defined(MBEDTLS_X509_CRT_PARSE_C)
    if( ssl->hostname != NULL )
    {
        mbedtls_zeroize( ssl->hostname, os_strlen( ssl->hostname ) );
        os_free( ssl->hostname );
		ssl->hostname = NULL;
    }
#endif
}
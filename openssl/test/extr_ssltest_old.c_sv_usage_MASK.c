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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC1(void)
{
    FUNC0(stderr, "usage: ssltest [args ...]\n");
    FUNC0(stderr, "\n");
    FUNC0(stderr, " -server_auth  - check server certificate\n");
    FUNC0(stderr, " -client_auth  - do client authentication\n");
    FUNC0(stderr, " -v            - more output\n");
    FUNC0(stderr, " -d            - debug output\n");
    FUNC0(stderr, " -reuse        - use session-id reuse\n");
    FUNC0(stderr, " -num <val>    - number of connections to perform\n");
    FUNC0(stderr,
            " -bytes <val>  - number of bytes to swap between client/server\n");
#ifndef OPENSSL_NO_DH
    FUNC0(stderr,
            " -dhe512       - use 512 bit key for DHE (to test failure)\n");
    FUNC0(stderr,
            " -dhe1024      - use 1024 bit key (safe prime) for DHE (default, no-op)\n");
    FUNC0(stderr,
            " -dhe1024dsa   - use 1024 bit key (with 160-bit subprime) for DHE\n");
    FUNC0(stderr, " -no_dhe       - disable DHE\n");
#endif
#ifndef OPENSSL_NO_EC
    FUNC0(stderr, " -no_ecdhe     - disable ECDHE\nTODO(openssl-team): no_ecdhe was broken by auto ecdh. Make this work again.\n");
#endif
#ifndef OPENSSL_NO_PSK
    FUNC0(stderr, " -psk arg      - PSK in hex (without 0x)\n");
#endif
#ifndef OPENSSL_NO_SSL3
    FUNC0(stderr, " -ssl3         - use SSLv3\n");
#endif
#ifndef OPENSSL_NO_TLS1
    FUNC0(stderr, " -tls1         - use TLSv1\n");
#endif
#ifndef OPENSSL_NO_DTLS
    FUNC0(stderr, " -dtls         - use DTLS\n");
#ifndef OPENSSL_NO_DTLS1
    FUNC0(stderr, " -dtls1        - use DTLSv1\n");
#endif
#ifndef OPENSSL_NO_DTLS1_2
    FUNC0(stderr, " -dtls12       - use DTLSv1.2\n");
#endif
#endif
    FUNC0(stderr, " -CApath arg   - PEM format directory of CA's\n");
    FUNC0(stderr, " -CAfile arg   - PEM format file of CA's\n");
    FUNC0(stderr, " -cert arg     - Server certificate file\n");
    FUNC0(stderr,
            " -key arg      - Server key file (default: same as -cert)\n");
    FUNC0(stderr, " -c_cert arg   - Client certificate file\n");
    FUNC0(stderr,
            " -c_key arg    - Client key file (default: same as -c_cert)\n");
    FUNC0(stderr, " -cipher arg   - The TLSv1.2 and below cipher list\n");
    FUNC0(stderr, " -ciphersuites arg   - The TLSv1.3 ciphersuites\n");
    FUNC0(stderr, " -bio_pair     - Use BIO pairs\n");
    FUNC0(stderr, " -ipv4         - Use IPv4 connection on localhost\n");
    FUNC0(stderr, " -ipv6         - Use IPv6 connection on localhost\n");
    FUNC0(stderr, " -f            - Test even cases that can't work\n");
    FUNC0(stderr,
            " -time         - measure processor time used by client and server\n");
    FUNC0(stderr, " -zlib         - use zlib compression\n");
#ifndef OPENSSL_NO_NEXTPROTONEG
    FUNC0(stderr, " -npn_client - have client side offer NPN\n");
    FUNC0(stderr, " -npn_server - have server side offer NPN\n");
    FUNC0(stderr, " -npn_server_reject - have server reject NPN\n");
#endif
    FUNC0(stderr, " -serverinfo_file file - have server use this file\n");
    FUNC0(stderr, " -serverinfo_sct  - have client offer and expect SCT\n");
    FUNC0(stderr,
            " -serverinfo_tack - have client offer and expect TACK\n");
    FUNC0(stderr,
            " -custom_ext - try various custom extension callbacks\n");
    FUNC0(stderr, " -alpn_client <string> - have client side offer ALPN\n");
    FUNC0(stderr, " -alpn_server <string> - have server side offer ALPN\n");
    FUNC0(stderr, " -alpn_server1 <string> - alias for -alpn_server\n");
    FUNC0(stderr, " -alpn_server2 <string> - have server side context 2 offer ALPN\n");
    FUNC0(stderr,
            " -alpn_expected <string> - the ALPN protocol that should be negotiated\n");
    FUNC0(stderr, " -server_min_proto <string> - Minimum version the server should support\n");
    FUNC0(stderr, " -server_max_proto <string> - Maximum version the server should support\n");
    FUNC0(stderr, " -client_min_proto <string> - Minimum version the client should support\n");
    FUNC0(stderr, " -client_max_proto <string> - Maximum version the client should support\n");
    FUNC0(stderr, " -should_negotiate <string> - The version that should be negotiated, fail-client or fail-server\n");
#ifndef OPENSSL_NO_CT
    FUNC0(stderr, " -noct         - no certificate transparency\n");
    FUNC0(stderr, " -requestct    - request certificate transparency\n");
    FUNC0(stderr, " -requirect    - require certificate transparency\n");
#endif
    FUNC0(stderr, " -sn_client <string>  - have client request this servername\n");
    FUNC0(stderr, " -sn_server1 <string> - have server context 1 respond to this servername\n");
    FUNC0(stderr, " -sn_server2 <string> - have server context 2 respond to this servername\n");
    FUNC0(stderr, " -sn_expect1          - expected server 1\n");
    FUNC0(stderr, " -sn_expect2          - expected server 2\n");
    FUNC0(stderr, " -server_sess_out <file>    - Save the server session to a file\n");
    FUNC0(stderr, " -server_sess_in <file>     - Read the server session from a file\n");
    FUNC0(stderr, " -client_sess_out <file>    - Save the client session to a file\n");
    FUNC0(stderr, " -client_sess_in <file>     - Read the client session from a file\n");
    FUNC0(stderr, " -should_reuse <number>     - The expected state of reusing the session\n");
    FUNC0(stderr, " -no_ticket    - do not issue TLS session ticket\n");
}
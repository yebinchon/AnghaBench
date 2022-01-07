
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void sv_usage(void)
{
    fprintf(stderr, "usage: ssltest [args ...]\n");
    fprintf(stderr, "\n");
    fprintf(stderr, " -server_auth  - check server certificate\n");
    fprintf(stderr, " -client_auth  - do client authentication\n");
    fprintf(stderr, " -v            - more output\n");
    fprintf(stderr, " -d            - debug output\n");
    fprintf(stderr, " -reuse        - use session-id reuse\n");
    fprintf(stderr, " -num <val>    - number of connections to perform\n");
    fprintf(stderr,
            " -bytes <val>  - number of bytes to swap between client/server\n");

    fprintf(stderr,
            " -dhe512       - use 512 bit key for DHE (to test failure)\n");
    fprintf(stderr,
            " -dhe1024      - use 1024 bit key (safe prime) for DHE (default, no-op)\n");
    fprintf(stderr,
            " -dhe1024dsa   - use 1024 bit key (with 160-bit subprime) for DHE\n");
    fprintf(stderr, " -no_dhe       - disable DHE\n");


    fprintf(stderr, " -no_ecdhe     - disable ECDHE\nTODO(openssl-team): no_ecdhe was broken by auto ecdh. Make this work again.\n");


    fprintf(stderr, " -psk arg      - PSK in hex (without 0x)\n");


    fprintf(stderr, " -ssl3         - use SSLv3\n");


    fprintf(stderr, " -tls1         - use TLSv1\n");


    fprintf(stderr, " -dtls         - use DTLS\n");

    fprintf(stderr, " -dtls1        - use DTLSv1\n");


    fprintf(stderr, " -dtls12       - use DTLSv1.2\n");


    fprintf(stderr, " -CApath arg   - PEM format directory of CA's\n");
    fprintf(stderr, " -CAfile arg   - PEM format file of CA's\n");
    fprintf(stderr, " -cert arg     - Server certificate file\n");
    fprintf(stderr,
            " -key arg      - Server key file (default: same as -cert)\n");
    fprintf(stderr, " -c_cert arg   - Client certificate file\n");
    fprintf(stderr,
            " -c_key arg    - Client key file (default: same as -c_cert)\n");
    fprintf(stderr, " -cipher arg   - The TLSv1.2 and below cipher list\n");
    fprintf(stderr, " -ciphersuites arg   - The TLSv1.3 ciphersuites\n");
    fprintf(stderr, " -bio_pair     - Use BIO pairs\n");
    fprintf(stderr, " -ipv4         - Use IPv4 connection on localhost\n");
    fprintf(stderr, " -ipv6         - Use IPv6 connection on localhost\n");
    fprintf(stderr, " -f            - Test even cases that can't work\n");
    fprintf(stderr,
            " -time         - measure processor time used by client and server\n");
    fprintf(stderr, " -zlib         - use zlib compression\n");

    fprintf(stderr, " -npn_client - have client side offer NPN\n");
    fprintf(stderr, " -npn_server - have server side offer NPN\n");
    fprintf(stderr, " -npn_server_reject - have server reject NPN\n");

    fprintf(stderr, " -serverinfo_file file - have server use this file\n");
    fprintf(stderr, " -serverinfo_sct  - have client offer and expect SCT\n");
    fprintf(stderr,
            " -serverinfo_tack - have client offer and expect TACK\n");
    fprintf(stderr,
            " -custom_ext - try various custom extension callbacks\n");
    fprintf(stderr, " -alpn_client <string> - have client side offer ALPN\n");
    fprintf(stderr, " -alpn_server <string> - have server side offer ALPN\n");
    fprintf(stderr, " -alpn_server1 <string> - alias for -alpn_server\n");
    fprintf(stderr, " -alpn_server2 <string> - have server side context 2 offer ALPN\n");
    fprintf(stderr,
            " -alpn_expected <string> - the ALPN protocol that should be negotiated\n");
    fprintf(stderr, " -server_min_proto <string> - Minimum version the server should support\n");
    fprintf(stderr, " -server_max_proto <string> - Maximum version the server should support\n");
    fprintf(stderr, " -client_min_proto <string> - Minimum version the client should support\n");
    fprintf(stderr, " -client_max_proto <string> - Maximum version the client should support\n");
    fprintf(stderr, " -should_negotiate <string> - The version that should be negotiated, fail-client or fail-server\n");

    fprintf(stderr, " -noct         - no certificate transparency\n");
    fprintf(stderr, " -requestct    - request certificate transparency\n");
    fprintf(stderr, " -requirect    - require certificate transparency\n");

    fprintf(stderr, " -sn_client <string>  - have client request this servername\n");
    fprintf(stderr, " -sn_server1 <string> - have server context 1 respond to this servername\n");
    fprintf(stderr, " -sn_server2 <string> - have server context 2 respond to this servername\n");
    fprintf(stderr, " -sn_expect1          - expected server 1\n");
    fprintf(stderr, " -sn_expect2          - expected server 2\n");
    fprintf(stderr, " -server_sess_out <file>    - Save the server session to a file\n");
    fprintf(stderr, " -server_sess_in <file>     - Read the server session from a file\n");
    fprintf(stderr, " -client_sess_out <file>    - Save the client session to a file\n");
    fprintf(stderr, " -client_sess_in <file>     - Read the client session from a file\n");
    fprintf(stderr, " -should_reuse <number>     - The expected state of reusing the session\n");
    fprintf(stderr, " -no_ticket    - do not issue TLS session ticket\n");
}

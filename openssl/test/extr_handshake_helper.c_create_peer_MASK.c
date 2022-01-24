#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned char* ssl; unsigned char* write_buf; unsigned char* read_buf; int write_buf_len; int read_buf_len; } ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  unsigned char SSL ;
typedef  TYPE_1__ PEER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (int const) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 

__attribute__((used)) static int FUNC5(PEER *peer, SSL_CTX *ctx)
{
    static const int peer_buffer_size = 64 * 1024;
    SSL *ssl = NULL;
    unsigned char *read_buf = NULL, *write_buf = NULL;

    if (!FUNC4(ssl = FUNC3(ctx))
            || !FUNC4(write_buf = FUNC1(peer_buffer_size))
            || !FUNC4(read_buf = FUNC1(peer_buffer_size)))
        goto err;

    peer->ssl = ssl;
    peer->write_buf = write_buf;
    peer->read_buf = read_buf;
    peer->write_buf_len = peer->read_buf_len = peer_buffer_size;
    return 1;
err:
    FUNC2(ssl);
    FUNC0(write_buf);
    FUNC0(read_buf);
    return 0;
}
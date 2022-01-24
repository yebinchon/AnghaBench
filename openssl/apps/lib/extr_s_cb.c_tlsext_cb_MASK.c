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
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,char const*,int,int) ; 
 char* FUNC3 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  tlsext_types ; 

void FUNC4(SSL *s, int client_server, int type,
               const unsigned char *data, int len, void *arg)
{
    BIO *bio = arg;
    const char *extname = FUNC3(type, tlsext_types, "unknown");

    FUNC2(bio, "TLS %s extension \"%s\" (id=%d), len=%d\n",
               client_server ? "server" : "client", extname, type, len);
    FUNC0(bio, (const char *)data, len);
    (void)FUNC1(bio);
}
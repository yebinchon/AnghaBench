#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ servername; scalar_t__ enable_pha; } ;
struct TYPE_5__ {TYPE_1__ client; } ;
typedef  TYPE_2__ SSL_TEST_EXTRA_CONF ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 scalar_t__ SSL_TEST_SERVERNAME_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(SSL *server, SSL *client,
                                    const SSL_TEST_EXTRA_CONF *extra)
{
    if (extra->client.servername != SSL_TEST_SERVERNAME_NONE)
        FUNC1(client,
                                 FUNC2(extra->client.servername));
    if (extra->client.enable_pha)
        FUNC0(client, 1);
}
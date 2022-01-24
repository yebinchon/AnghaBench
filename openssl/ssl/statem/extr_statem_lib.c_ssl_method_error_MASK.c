#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int options; int /*<<< orphan*/  max_proto_version; int /*<<< orphan*/  min_proto_version; } ;
struct TYPE_8__ {int version; int mask; int flags; } ;
typedef  TYPE_1__ SSL_METHOD ;
typedef  TYPE_2__ SSL ;

/* Variables and functions */
 int SSL_METHOD_NO_SUITEB ; 
 int SSL_R_AT_LEAST_TLS_1_2_NEEDED_IN_SUITEB_MODE ; 
 int SSL_R_UNSUPPORTED_PROTOCOL ; 
 int SSL_R_VERSION_TOO_HIGH ; 
 int SSL_R_VERSION_TOO_LOW ; 
 int /*<<< orphan*/  SSL_SECOP_VERSION ; 
 scalar_t__ FUNC0 (TYPE_2__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_2__ const*) ; 
 scalar_t__ FUNC2 (TYPE_2__ const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const SSL *s, const SSL_METHOD *method)
{
    int version = method->version;

    if ((s->min_proto_version != 0 &&
         FUNC2(s, version, s->min_proto_version) < 0) ||
        FUNC0(s, SSL_SECOP_VERSION, 0, version, NULL) == 0)
        return SSL_R_VERSION_TOO_LOW;

    if (s->max_proto_version != 0 &&
        FUNC2(s, version, s->max_proto_version) > 0)
        return SSL_R_VERSION_TOO_HIGH;

    if ((s->options & method->mask) != 0)
        return SSL_R_UNSUPPORTED_PROTOCOL;
    if ((method->flags & SSL_METHOD_NO_SUITEB) != 0 && FUNC1(s))
        return SSL_R_AT_LEAST_TLS_1_2_NEEDED_IN_SUITEB_MODE;

    return 0;
}
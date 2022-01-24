#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ version; int /*<<< orphan*/ * (* cmeth ) () ;} ;
typedef  TYPE_2__ version_info ;
struct TYPE_12__ {scalar_t__ version; int /*<<< orphan*/  server; TYPE_1__* method; } ;
struct TYPE_10__ {int version; } ;
typedef  int /*<<< orphan*/  SSL_METHOD ;
typedef  TYPE_3__ SSL ;

/* Variables and functions */
#define  DTLS_ANY_VERSION 129 
 int TLS1_3_VERSION ; 
#define  TLS_ANY_VERSION 128 
 TYPE_2__* dtls_version_table ; 
 scalar_t__ FUNC0 (TYPE_3__ const*) ; 
 scalar_t__ FUNC1 (TYPE_3__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 TYPE_2__* tls_version_table ; 
 scalar_t__ FUNC4 (TYPE_3__ const*,int,scalar_t__) ; 

int FUNC5(const SSL *s, int version, const SSL_METHOD **meth)
{
    const version_info *vent;
    const version_info *table;

    switch (s->method->version) {
    default:
        /* Version should match method version for non-ANY method */
        return FUNC4(s, version, s->version) == 0;
    case TLS_ANY_VERSION:
        table = tls_version_table;
        break;
    case DTLS_ANY_VERSION:
        table = dtls_version_table;
        break;
    }

    for (vent = table;
         vent->version != 0 && FUNC4(s, version, vent->version) <= 0;
         ++vent) {
        if (vent->cmeth != NULL
                && FUNC4(s, version, vent->version) == 0
                && FUNC1(s, vent->cmeth()) == 0
                && (!s->server
                    || version != TLS1_3_VERSION
                    || FUNC0(s))) {
            if (meth != NULL)
                *meth = vent->cmeth();
            return 1;
        }
    }
    return 0;
}
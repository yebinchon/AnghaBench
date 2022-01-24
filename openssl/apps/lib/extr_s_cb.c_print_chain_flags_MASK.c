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
struct TYPE_3__ {int retval; scalar_t__ name; } ;
typedef  TYPE_1__ STRINT_PAIR ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int CERT_PKEY_SUITEB ; 
 int SSL_CERT_FLAG_SUITEB_128_LOS ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bio_err ; 
 TYPE_1__* chain_flags ; 

__attribute__((used)) static void FUNC3(SSL *s, int flags)
{
    STRINT_PAIR *pp;

    for (pp = chain_flags; pp->name; ++pp)
        FUNC0(bio_err, "\t%s: %s\n",
                   pp->name,
                   (flags & pp->retval) ? "OK" : "NOT OK");
    FUNC0(bio_err, "\tSuite B: ");
    if (FUNC2(s, 0) & SSL_CERT_FLAG_SUITEB_128_LOS)
        FUNC1(bio_err, flags & CERT_PKEY_SUITEB ? "OK\n" : "NOT OK\n");
    else
        FUNC0(bio_err, "not tested\n");
}
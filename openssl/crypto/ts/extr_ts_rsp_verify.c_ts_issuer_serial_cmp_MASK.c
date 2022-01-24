#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_8__ {int /*<<< orphan*/  serial; int /*<<< orphan*/  issuer; } ;
struct TYPE_6__ {int /*<<< orphan*/  dirn; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_1__ d; } ;
typedef  TYPE_2__ GENERAL_NAME ;
typedef  TYPE_3__ ESS_ISSUER_SERIAL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ GEN_DIRNAME ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(ESS_ISSUER_SERIAL *is, X509 *cert)
{
    GENERAL_NAME *issuer;

    if (!is || !cert || FUNC4(is->issuer) != 1)
        return -1;

    issuer = FUNC5(is->issuer, 0);
    if (issuer->type != GEN_DIRNAME
        || FUNC1(issuer->d.dirn, FUNC2(cert)))
        return -1;

    if (FUNC0(is->serial, FUNC3(cert)))
        return -1;

    return 0;
}
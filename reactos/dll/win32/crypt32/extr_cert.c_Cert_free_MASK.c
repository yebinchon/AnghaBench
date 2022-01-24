#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  context_t ;
struct TYPE_3__ {int /*<<< orphan*/  pCertInfo; int /*<<< orphan*/  pbCertEncoded; } ;
struct TYPE_4__ {TYPE_1__ ctx; } ;
typedef  TYPE_2__ cert_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(context_t *context)
{
    cert_t *cert = (cert_t*)context;

    FUNC0(cert->ctx.pbCertEncoded);
    FUNC1(cert->ctx.pCertInfo);
}
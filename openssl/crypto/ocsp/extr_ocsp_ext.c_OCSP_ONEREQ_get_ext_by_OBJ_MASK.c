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
struct TYPE_3__ {int /*<<< orphan*/  singleRequestExtensions; } ;
typedef  TYPE_1__ OCSP_ONEREQ ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 

int FUNC1(OCSP_ONEREQ *x, const ASN1_OBJECT *obj,
                               int lastpos)
{
    return FUNC0(x->singleRequestExtensions, obj, lastpos);
}
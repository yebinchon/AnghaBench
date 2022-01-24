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
struct TYPE_4__ {int /*<<< orphan*/  requestExtensions; } ;
struct TYPE_5__ {TYPE_1__ tbsRequest; } ;
typedef  TYPE_2__ OCSP_REQUEST ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int,int*,int*) ; 

void *FUNC1(OCSP_REQUEST *x, int nid, int *crit, int *idx)
{
    return FUNC0(x->tbsRequest.requestExtensions, nid, crit, idx);
}
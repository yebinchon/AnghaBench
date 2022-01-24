#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  nfstime4 ;
typedef  int /*<<< orphan*/  bool_t ;
struct TYPE_5__ {scalar_t__ x_op; } ;
typedef  TYPE_1__ XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ SET_TO_CLIENT_TIME4 ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ XDR_ENCODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__*) ; 

__attribute__((used)) static bool_t FUNC3(
    XDR *xdr,
    nfstime4 *nt,
    const nfstime4 *time_delta)
{
    uint32_t how = FUNC0(nt, time_delta);

    if (xdr->x_op != XDR_ENCODE) /* not used for decode */
        return FALSE;

    if (!FUNC2(xdr, &how))
        return FALSE;

    if (how == SET_TO_CLIENT_TIME4)
        return FUNC1(xdr, nt);

    return TRUE;
}
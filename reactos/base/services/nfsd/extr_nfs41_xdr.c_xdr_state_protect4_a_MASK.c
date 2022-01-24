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
typedef  int /*<<< orphan*/  u_int32_t ;
struct TYPE_4__ {int /*<<< orphan*/  spa_ssv_parms; int /*<<< orphan*/  spa_mach_ops; } ;
struct TYPE_5__ {int spa_how; TYPE_1__ u; } ;
typedef  TYPE_2__ state_protect4_a ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
#define  SP4_MACH_CRED 130 
#define  SP4_NONE 129 
#define  SP4_SSV 128 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool_t FUNC4(
    XDR *xdr,
    state_protect4_a *spa)
{
    bool_t result = TRUE;

    if (!FUNC3(xdr, (u_int32_t *)&spa->spa_how))
        return FALSE;

    switch (spa->spa_how)
    {
    case SP4_NONE:
        break;
#if 0
    case SP4_MACH_CRED:
        result = xdr_state_protect_ops4(xdr, &spa->u.spa_mach_ops);
        break;
    case SP4_SSV:
        result = xdr_ssv_sp_parms4(xdr, &spa->u.spa_ssv_parms);
        break;
#endif
    default:
        FUNC0("encode_state_protect4_a: state protect "
            "type %d not supported.\n", spa->spa_how);
        result = FALSE;
        break;
    }
    return result;
}
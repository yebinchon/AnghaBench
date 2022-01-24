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
typedef  int /*<<< orphan*/  xdrproc_t ;
typedef  int uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  op; scalar_t__ arg; } ;
typedef  TYPE_1__ nfs_argop4 ;
struct TYPE_5__ {int /*<<< orphan*/  csa_cb_program; int /*<<< orphan*/  csa_back_chan_attrs; int /*<<< orphan*/  csa_fore_chan_attrs; int /*<<< orphan*/  csa_flags; int /*<<< orphan*/  csa_sequence; int /*<<< orphan*/  csa_clientid; int /*<<< orphan*/ * csa_cb_secparams; } ;
typedef  TYPE_2__ nfs41_create_session_args ;
typedef  int /*<<< orphan*/  nfs41_callback_secparms ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  OP_CREATE_SESSION ; 
 scalar_t__ encode_backchannel_sec_parms ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char**,int*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool_t FUNC5(
    XDR *xdr,
    nfs_argop4 *argop)
{
    nfs41_create_session_args *args = (nfs41_create_session_args*)argop->arg;
    nfs41_callback_secparms *cb_secparams = args->csa_cb_secparams;
    uint32_t cb_count = 2;

    if (FUNC0(argop->op, OP_CREATE_SESSION))
        return FALSE;

    /* clientid4 csa_clientid */
    if (!FUNC3(xdr, &args->csa_clientid))
        return FALSE;

    /* sequenceid4 csa_sequence */
    if (!FUNC4(xdr, &args->csa_sequence))
        return FALSE;

    /* TODO: uint32_t csa_flags = 0 */
    if (!FUNC4(xdr, &args->csa_flags))
        return FALSE;

    /* channel_attrs4 csa_fore_chan_attrs */
    if (!FUNC2(xdr, &args->csa_fore_chan_attrs))
        return FALSE;

    /* channel_attrs4 csa_back_chan_attrs */
    if (!FUNC2(xdr, &args->csa_back_chan_attrs))
        return FALSE;

    /* TODO: uint32_t csa_cb_program = 1234 */
    if (!FUNC4(xdr, &args->csa_cb_program))
        return FALSE;

    return FUNC1(xdr, (char **)&cb_secparams, &cb_count,
        3, sizeof(nfs41_callback_secparms), (xdrproc_t) encode_backchannel_sec_parms);
}
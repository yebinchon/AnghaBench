#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* delegation; int /*<<< orphan*/  attrset; int /*<<< orphan*/  rflags; int /*<<< orphan*/  cinfo; int /*<<< orphan*/  stateid; } ;
typedef  TYPE_1__ nfs41_op_open_res_ok ;
typedef  int /*<<< orphan*/  enum_t ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;
struct TYPE_7__ {int type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
#define  OPEN_DELEGATE_NONE 131 
#define  OPEN_DELEGATE_NONE_EXT 130 
#define  OPEN_DELEGATE_READ 129 
#define  OPEN_DELEGATE_WRITE 128 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool_t FUNC9(
    XDR *xdr,
    nfs41_op_open_res_ok *res)
{
    if (!FUNC7(xdr, res->stateid))
        return FALSE;

    if (!FUNC5(xdr, &res->cinfo))
        return FALSE;

    if (!FUNC8(xdr, &res->rflags))
        return FALSE;

    if (!FUNC4(xdr, &res->attrset))
        return FALSE;

    if (!FUNC6(xdr, (enum_t*)&res->delegation->type))
        return FALSE;

    switch (res->delegation->type)
    {
    case OPEN_DELEGATE_NONE:
        return TRUE;
    case OPEN_DELEGATE_NONE_EXT:
        return FUNC0(xdr, res->delegation);
    case OPEN_DELEGATE_READ:
        return FUNC1(xdr, res->delegation);
    case OPEN_DELEGATE_WRITE:
        return FUNC2(xdr, res->delegation);
    default:
        FUNC3("decode_open_res_ok: delegation type %d not "
            "supported.\n", res->delegation->type);
        return FALSE;
    }
}
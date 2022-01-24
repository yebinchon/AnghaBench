#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct cb_resop {int /*<<< orphan*/  xdr_ok; int /*<<< orphan*/  res; int /*<<< orphan*/  opnum; } ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  NULL_xdrproc_t ; 
 int /*<<< orphan*/  cb_resop_discrim ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool_t FUNC2(XDR *xdr, struct cb_resop *res)
{
    /* save xdr encode/decode status to see which operation failed */
    res->xdr_ok = FUNC1(xdr, &res->opnum, (char*)&res->res,
        cb_resop_discrim, NULL_xdrproc_t);
    if (!res->xdr_ok) { FUNC0("resop.res"); goto out; }
out:
    return res->xdr_ok;
}
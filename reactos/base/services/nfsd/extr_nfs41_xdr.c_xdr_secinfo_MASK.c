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
struct TYPE_3__ {scalar_t__ sec_flavor; char* oid; scalar_t__ qop; int /*<<< orphan*/  type; int /*<<< orphan*/  oid_len; } ;
typedef  TYPE_1__ nfs41_secinfo_info ;
typedef  int /*<<< orphan*/  enum_t ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MAX_OID_LEN ; 
 scalar_t__ RPCSEC_GSS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 

__attribute__((used)) static bool_t FUNC3(
    XDR *xdr,
    nfs41_secinfo_info *secinfo)
{
    if (!FUNC2(xdr, &secinfo->sec_flavor))
        return FALSE;
    if (secinfo->sec_flavor == RPCSEC_GSS) {
        char *p = secinfo->oid;
        if (!FUNC0(xdr, (char **)&p, &secinfo->oid_len, MAX_OID_LEN))
            return FALSE;
        if (!FUNC2(xdr, &secinfo->qop))
            return FALSE;
        if (!FUNC1(xdr, (enum_t *)&secinfo->type))
            return FALSE;
    }
    return TRUE;
}
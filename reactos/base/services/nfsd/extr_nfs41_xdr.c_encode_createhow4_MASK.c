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
struct TYPE_3__ {int mode; int /*<<< orphan*/  createattrs; scalar_t__ createverf; } ;
typedef  TYPE_1__ createhow4 ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
#define  EXCLUSIVE4 131 
#define  EXCLUSIVE4_1 130 
 int /*<<< orphan*/  FALSE ; 
#define  GUARDED4 129 
 int /*<<< orphan*/  NFS4_VERIFIER_SIZE ; 
 int /*<<< orphan*/  TRUE ; 
#define  UNCHECKED4 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static bool_t FUNC3(
    XDR *xdr,
    createhow4 *ch)
{
    bool_t result = TRUE;

    if (!FUNC2(xdr, &ch->mode))
        return FALSE;

    switch (ch->mode)
    {
    case UNCHECKED4:
    case GUARDED4:
        result = FUNC0(xdr, ch->createattrs);
        break;
    case EXCLUSIVE4:
        result = FUNC1(xdr, (char *)ch->createverf, NFS4_VERIFIER_SIZE);
        break;
    case EXCLUSIVE4_1:
        if (!FUNC1(xdr, (char *)ch->createverf, NFS4_VERIFIER_SIZE))
            return FALSE;
        if (!FUNC0(xdr, ch->createattrs))
            return FALSE;
        break;
    }
    return result;
}
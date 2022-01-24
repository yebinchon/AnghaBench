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
struct notify4 {int /*<<< orphan*/  len; int /*<<< orphan*/  list; int /*<<< orphan*/  mask; } ;
typedef  int bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4_OPAQUE_LIMIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool_t FUNC2(XDR *xdr, struct notify4 *notify)
{
    return FUNC0(xdr, &notify->mask)
        && FUNC1(xdr, &notify->list, &notify->len, NFS4_OPAQUE_LIMIT);
}
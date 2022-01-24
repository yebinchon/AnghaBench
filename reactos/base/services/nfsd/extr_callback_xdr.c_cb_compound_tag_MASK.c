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
struct cb_compound_tag {scalar_t__ len; int /*<<< orphan*/  str; } ;
typedef  int bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 scalar_t__ CB_COMPOUND_MAX_TAG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 

__attribute__((used)) static bool_t FUNC2(XDR *xdr, struct cb_compound_tag *args)
{
    return FUNC1(xdr, &args->len)
        && args->len <= CB_COMPOUND_MAX_TAG
        && FUNC0(xdr, args->str, args->len);
}
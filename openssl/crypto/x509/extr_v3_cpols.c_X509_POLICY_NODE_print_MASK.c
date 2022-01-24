#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* data; } ;
typedef  TYPE_1__ X509_POLICY_NODE ;
struct TYPE_6__ {scalar_t__ qualifier_set; int /*<<< orphan*/  valid_policy; } ;
typedef  TYPE_2__ X509_POLICY_DATA ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int) ; 

void FUNC5(BIO *out, X509_POLICY_NODE *node, int indent)
{
    const X509_POLICY_DATA *dat = node->data;

    FUNC0(out, "%*sPolicy: ", indent, "");

    FUNC2(out, dat->valid_policy);
    FUNC1(out, "\n");
    FUNC0(out, "%*s%s\n", indent + 2, "",
               FUNC3(dat) ? "Critical" : "Non Critical");
    if (dat->qualifier_set) {
        FUNC4(out, dat->qualifier_set, indent + 2);
        FUNC1(out, "\n");
    }
    else
        FUNC0(out, "%*sNo Qualifiers\n", indent + 2, "");
}
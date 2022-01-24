#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * valid_policy; } ;
typedef  TYPE_1__ X509_POLICY_DATA ;
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ X509_POLICY_CACHE ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int) ; 

X509_POLICY_DATA *FUNC2(const X509_POLICY_CACHE *cache,
                                         const ASN1_OBJECT *id)
{
    int idx;
    X509_POLICY_DATA tmp;
    tmp.valid_policy = (ASN1_OBJECT *)id;
    idx = FUNC0(cache->data, &tmp);
    return FUNC1(cache->data, idx);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* ip; struct TYPE_4__* email; struct TYPE_4__* peername; int /*<<< orphan*/  hosts; int /*<<< orphan*/  policies; } ;
typedef  TYPE_1__ X509_VERIFY_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_OBJECT_free ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  str_free ; 

void FUNC3(X509_VERIFY_PARAM *param)
{
    if (param == NULL)
        return;
    FUNC1(param->policies, ASN1_OBJECT_free);
    FUNC2(param->hosts, str_free);
    FUNC0(param->peername);
    FUNC0(param->email);
    FUNC0(param->ip);
    FUNC0(param);
}
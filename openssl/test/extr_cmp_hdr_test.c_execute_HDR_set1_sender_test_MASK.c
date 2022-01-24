#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_NAME ;
struct TYPE_9__ {TYPE_1__* sender; } ;
struct TYPE_8__ {TYPE_4__* hdr; } ;
struct TYPE_7__ {int /*<<< orphan*/  directoryName; } ;
struct TYPE_6__ {TYPE_2__ d; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ CMP_HDR_TEST_FIXTURE ;

/* Variables and functions */
 int GEN_DIRNAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(CMP_HDR_TEST_FIXTURE *fixture)
{
    X509_NAME *x509name = FUNC5();

    if (!FUNC1(x509name))
        return 0;

    FUNC2(x509name, "CN", "A common sender name");
    if (!FUNC0(FUNC6(fixture->hdr, x509name), 1))
        return 0;
    if (!FUNC0(fixture->hdr->sender->type, GEN_DIRNAME))
        return 0;

    if (!FUNC0(
            FUNC3(fixture->hdr->sender->d.directoryName, x509name), 0))
        return 0;

    FUNC4(x509name);
    return 1;
}
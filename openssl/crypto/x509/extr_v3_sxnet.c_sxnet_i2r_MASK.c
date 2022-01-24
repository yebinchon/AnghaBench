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
typedef  int /*<<< orphan*/  X509V3_EXT_METHOD ;
struct TYPE_6__ {int /*<<< orphan*/  ids; int /*<<< orphan*/  version; } ;
struct TYPE_5__ {int /*<<< orphan*/  user; int /*<<< orphan*/  zone; } ;
typedef  TYPE_1__ SXNETID ;
typedef  TYPE_2__ SXNET ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(X509V3_EXT_METHOD *method, SXNET *sx, BIO *out,
                     int indent)
{
    long v;
    char *tmp;
    SXNETID *id;
    int i;
    v = FUNC0(sx->version);
    FUNC2(out, "%*sVersion: %ld (0x%lX)", indent, "", v + 1, v);
    for (i = 0; i < FUNC5(sx->ids); i++) {
        id = FUNC6(sx->ids, i);
        tmp = FUNC4(NULL, id->zone);
        FUNC2(out, "\n%*sZone: %s, User: ", indent, "", tmp);
        FUNC3(tmp);
        FUNC1(out, id->user);
    }
    return 1;
}
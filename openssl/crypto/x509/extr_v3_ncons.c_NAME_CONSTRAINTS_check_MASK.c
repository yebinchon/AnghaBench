#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_NAME_ENTRY ;
typedef  int /*<<< orphan*/  X509_NAME ;
struct TYPE_13__ {int /*<<< orphan*/  altname; } ;
typedef  TYPE_2__ X509 ;
struct TYPE_16__ {scalar_t__ type; } ;
struct TYPE_12__ {TYPE_9__* rfc822Name; int /*<<< orphan*/ * directoryName; } ;
struct TYPE_15__ {TYPE_1__ d; int /*<<< orphan*/  type; } ;
struct TYPE_14__ {int /*<<< orphan*/  excludedSubtrees; int /*<<< orphan*/  permittedSubtrees; } ;
typedef  TYPE_3__ NAME_CONSTRAINTS ;
typedef  TYPE_4__ GENERAL_NAME ;

/* Variables and functions */
 int /*<<< orphan*/  GEN_DIRNAME ; 
 int /*<<< orphan*/  GEN_EMAIL ; 
 int NAME_CHECK_MAX ; 
 int /*<<< orphan*/  NID_pkcs9_emailAddress ; 
 scalar_t__ V_ASN1_IA5STRING ; 
 TYPE_9__* FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int X509_V_ERR_UNSPECIFIED ; 
 int X509_V_ERR_UNSUPPORTED_NAME_SYNTAX ; 
 int X509_V_OK ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,int) ; 
 int FUNC6 (TYPE_4__*,TYPE_3__*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(X509 *x, NAME_CONSTRAINTS *nc)
{
    int r, i, name_count, constraint_count;
    X509_NAME *nm;

    nm = FUNC4(x);

    /*
     * Guard against certificates with an excessive number of names or
     * constraints causing a computationally expensive name constraints check.
     */
    if (!FUNC5(&name_count, FUNC1(nm),
                     FUNC7(x->altname))
        || !FUNC5(&constraint_count,
                        FUNC9(nc->permittedSubtrees),
                        FUNC9(nc->excludedSubtrees))
        || (name_count > 0 && constraint_count > NAME_CHECK_MAX / name_count))
        return X509_V_ERR_UNSPECIFIED;

    if (FUNC1(nm) > 0) {
        GENERAL_NAME gntmp;
        gntmp.type = GEN_DIRNAME;
        gntmp.d.directoryName = nm;

        r = FUNC6(&gntmp, nc);

        if (r != X509_V_OK)
            return r;

        gntmp.type = GEN_EMAIL;

        /* Process any email address attributes in subject name */

        for (i = -1;;) {
            const X509_NAME_ENTRY *ne;

            i = FUNC3(nm, NID_pkcs9_emailAddress, i);
            if (i == -1)
                break;
            ne = FUNC2(nm, i);
            gntmp.d.rfc822Name = FUNC0(ne);
            if (gntmp.d.rfc822Name->type != V_ASN1_IA5STRING)
                return X509_V_ERR_UNSUPPORTED_NAME_SYNTAX;

            r = FUNC6(&gntmp, nc);

            if (r != X509_V_OK)
                return r;
        }

    }

    for (i = 0; i < FUNC7(x->altname); i++) {
        GENERAL_NAME *gen = FUNC8(x->altname, i);
        r = FUNC6(gen, nc);
        if (r != X509_V_OK)
            return r;
    }

    return X509_V_OK;

}
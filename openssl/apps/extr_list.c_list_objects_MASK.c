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
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ NID_undef ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 char* FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 int FUNC7 (char*,int,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (char*,int) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  bio_out ; 
 scalar_t__ FUNC10 (char const*,char const*) ; 

__attribute__((used)) static void FUNC11(void)
{
    int max_nid = FUNC2(0);
    int i;
    char *oid_buf = NULL;
    int oid_size = 0;

    /* Skip 0, since that's NID_undef */
    for (i = 1; i < max_nid; i++) {
        const ASN1_OBJECT *obj = FUNC4(i);
        const char *sn = FUNC5(i);
        const char *ln = FUNC3(i);
        int n = 0;

        /*
         * If one of the retrieved objects somehow generated an error,
         * we ignore it.  The check for NID_undef below will detect the
         * error and simply skip to the next NID.
         */
        FUNC1();

        if (FUNC6(obj) == NID_undef)
            continue;

        if ((n = FUNC7(NULL, 0, obj, 1)) == 0) {
            FUNC0(bio_out, "# None-OID object: %s, %s\n", sn, ln);
            continue;
        }
        if (n < 0)
            break;               /* Error */

        if (n > oid_size) {
            oid_buf = FUNC9(oid_buf, n + 1);
            if (oid_buf == NULL) {
                FUNC0(bio_err, "ERROR: Memory allocation\n");
                break;           /* Error */
            }
            oid_size = n + 1;
        }
        if (FUNC7(oid_buf, oid_size, obj, 1) < 0)
            break;               /* Error */
        if (ln == NULL || FUNC10(sn, ln) == 0)
            FUNC0(bio_out, "%s = %s\n", sn, oid_buf);
        else
            FUNC0(bio_out, "%s = %s, %s\n", sn, ln, oid_buf);
    }

    FUNC8(oid_buf);
}
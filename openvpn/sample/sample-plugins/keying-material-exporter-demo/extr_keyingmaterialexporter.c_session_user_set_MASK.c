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
struct session {int /*<<< orphan*/  user; } ;
typedef  int /*<<< orphan*/  X509_NAME_ENTRY ;
typedef  int /*<<< orphan*/  X509_NAME ;
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  ASN1_STRING ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char**,int /*<<< orphan*/ *) ; 
 int NID_undef ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char*,int) ; 

__attribute__((used)) static void
FUNC11(struct session *sess, X509 *x509)
{
    int fn_nid;
    ASN1_OBJECT *fn;
    ASN1_STRING *val;
    X509_NAME *x509_name;
    X509_NAME_ENTRY *ent;
    const char *objbuf;

    x509_name = FUNC8(x509);
    int i, n = FUNC6(x509_name);
    for (i = 0; i < n; ++i)
    {
        if (!(ent = FUNC7(x509_name, i)))
        {
            continue;
        }
        if (!(fn = FUNC5(ent)))
        {
            continue;
        }
        if (!(val = FUNC4(ent)))
        {
            continue;
        }
        if ((fn_nid = FUNC2(fn)) == NID_undef)
        {
            continue;
        }
        if (!(objbuf = FUNC1(fn_nid)))
        {
            continue;
        }
        unsigned char *buf = NULL;
        if (FUNC0(&buf, val) < 0)
        {
            continue;
        }

        if (!FUNC10(objbuf, "CN", 2))
        {
            FUNC9(sess->user, sizeof(sess->user) - 1, (char *)buf);
        }

        FUNC3(buf);
    }
}
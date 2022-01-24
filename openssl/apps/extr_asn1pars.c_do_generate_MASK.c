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
struct TYPE_4__ {scalar_t__ data; } ;
typedef  int /*<<< orphan*/  CONF ;
typedef  TYPE_1__ BUF_MEM ;
typedef  int /*<<< orphan*/  ASN1_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC6 (char const*) ; 
 int /*<<< orphan*/  bio_err ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned char**) ; 

__attribute__((used)) static int FUNC8(char *genstr, const char *genconf, BUF_MEM *buf)
{
    CONF *cnf = NULL;
    int len;
    unsigned char *p;
    ASN1_TYPE *atyp = NULL;

    if (genconf != NULL) {
        if ((cnf = FUNC6(genconf)) == NULL)
            goto err;
        if (genstr == NULL)
            genstr = FUNC5(cnf, "default", "asn1");
        if (genstr == NULL) {
            FUNC2(bio_err, "Can't find 'asn1' in '%s'\n", genconf);
            goto err;
        }
    }

    atyp = FUNC1(genstr, cnf);
    FUNC4(cnf);
    cnf = NULL;

    if (atyp == NULL)
        return -1;

    len = FUNC7(atyp, NULL);

    if (len <= 0)
        goto err;

    if (!FUNC3(buf, len))
        goto err;

    p = (unsigned char *)buf->data;

    FUNC7(atyp, &p);

    FUNC0(atyp);
    return len;

 err:
    FUNC4(cnf);
    FUNC0(atyp);
    return -1;
}
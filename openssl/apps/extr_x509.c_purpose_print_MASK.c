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
typedef  int /*<<< orphan*/  X509_PURPOSE ;
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC4(BIO *bio, X509 *cert, X509_PURPOSE *pt)
{
    int id, i, idret;
    const char *pname;
    id = FUNC2(pt);
    pname = FUNC1(pt);
    for (i = 0; i < 2; i++) {
        idret = FUNC3(cert, id, i);
        FUNC0(bio, "%s%s : ", pname, i ? " CA" : "");
        if (idret == 1)
            FUNC0(bio, "Yes\n");
        else if (idret == 0)
            FUNC0(bio, "No\n");
        else
            FUNC0(bio, "Yes (WARNING code=%d)\n", idret);
    }
    return 1;
}
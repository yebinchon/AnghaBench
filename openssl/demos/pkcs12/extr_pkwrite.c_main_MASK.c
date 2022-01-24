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
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  PKCS12 ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC13(int argc, char **argv)
{
    FILE *fp;
    EVP_PKEY *pkey;
    X509 *cert;
    PKCS12 *p12;
    if (argc != 5) {
        FUNC10(stderr, "Usage: pkwrite infile password name p12file\n");
        FUNC7(1);
    }
    FUNC2();
    FUNC0();
    if ((fp = FUNC9(argv[1], "r")) == NULL) {
        FUNC10(stderr, "Error opening file %s\n", argv[1]);
        FUNC7(1);
    }
    cert = FUNC4(fp, NULL, NULL, NULL);
    FUNC12(fp);
    pkey = FUNC3(fp, NULL, NULL, NULL);
    FUNC8(fp);
    p12 = FUNC5(argv[2], argv[3], pkey, cert, NULL, 0, 0, 0, 0, 0);
    if (!p12) {
        FUNC10(stderr, "Error creating PKCS#12 structure\n");
        FUNC1(stderr);
        FUNC7(1);
    }
    if ((fp = FUNC9(argv[4], "wb")) == NULL) {
        FUNC10(stderr, "Error opening file %s\n", argv[1]);
        FUNC1(stderr);
        FUNC7(1);
    }
    FUNC11(fp, p12);
    FUNC6(p12);
    FUNC8(fp);
    return 0;
}
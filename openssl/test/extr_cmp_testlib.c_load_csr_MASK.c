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
typedef  char const X509_REQ ;
typedef  char const BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 char* FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ *) ; 

X509_REQ *FUNC4(const char *file)
{
    X509_REQ *csr = NULL;
    BIO *bio = NULL;

    if (!FUNC2(file) || !FUNC2(bio = FUNC1(file, "rb")))
        return NULL;
    (void)FUNC2(csr = FUNC3(bio, NULL));
    FUNC0(bio);
    return csr;
}
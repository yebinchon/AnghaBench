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
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char const*,char const*) ; 

__attribute__((used)) static X509 *FUNC5(const char *dir, const char *file)
{
    X509 *cert = NULL;
    char *file_path = FUNC4(dir, file);

    if (file_path != NULL) {
        BIO *cert_io = FUNC1(file_path, "r");

        if (cert_io != NULL)
            cert = FUNC3(cert_io, NULL, NULL, NULL);
        FUNC0(cert_io);
    }

    FUNC2(file_path);
    return cert;
}
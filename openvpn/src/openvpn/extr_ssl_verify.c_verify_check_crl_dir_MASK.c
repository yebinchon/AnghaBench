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
struct gc_arena {int dummy; } ;
typedef  int /*<<< orphan*/  result_t ;
typedef  int /*<<< orphan*/  openvpn_x509_cert_t ;
typedef  int /*<<< orphan*/  fn ;

/* Variables and functions */
 int /*<<< orphan*/  D_HANDSHAKE ; 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  OS_SPECIFIC_DIRSEP ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SUCCESS ; 
 char* FUNC0 (int /*<<< orphan*/ *,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct gc_arena*) ; 
 struct gc_arena FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char const*,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static result_t
FUNC7(const char *crl_dir, openvpn_x509_cert_t *cert)
{
    result_t ret = FAILURE;
    char fn[256];
    int fd = -1;
    struct gc_arena gc = FUNC3();

    char *serial = FUNC0(cert, &gc);

    if (!FUNC5(fn, sizeof(fn), "%s%c%s", crl_dir, OS_SPECIFIC_DIRSEP, serial))
    {
        FUNC4(D_HANDSHAKE, "VERIFY CRL: filename overflow");
        goto cleanup;
    }
    fd = FUNC6(fn, O_RDONLY, 0);
    if (fd >= 0)
    {
        FUNC4(D_HANDSHAKE, "VERIFY CRL: certificate serial number %s is revoked", serial);
        goto cleanup;
    }

    ret = SUCCESS;

cleanup:

    if (fd != -1)
    {
        FUNC1(fd);
    }
    FUNC2(&gc);
    return ret;
}
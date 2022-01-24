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
struct env_set {int dummy; } ;
struct argv {int dummy; } ;
typedef  int /*<<< orphan*/  result_t ;
typedef  int /*<<< orphan*/  openvpn_x509_cert_t ;

/* Variables and functions */
 int /*<<< orphan*/  D_HANDSHAKE ; 
 int /*<<< orphan*/  D_TLS_DEBUG ; 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct argv*,char*) ; 
 struct argv FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct argv*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct argv*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct argv*) ; 
 int /*<<< orphan*/  FUNC5 (struct gc_arena*) ; 
 struct gc_arena FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int FUNC8 (struct argv*,struct env_set*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct env_set*,char*,char const*) ; 
 char* FUNC11 (int /*<<< orphan*/ *,char const*,struct gc_arena*) ; 

__attribute__((used)) static result_t
FUNC12(const char *verify_command, struct env_set *es,
                         int cert_depth, openvpn_x509_cert_t *cert, char *subject, const char *verify_export_cert)
{
    const char *tmp_file = NULL;
    int ret;
    struct gc_arena gc = FUNC6();
    struct argv argv = FUNC1();

    FUNC10(es, "script_type", "tls-verify");

    if (verify_export_cert)
    {
        tmp_file = FUNC11(cert, verify_export_cert, &gc);
        if (!tmp_file)
        {
            ret = false;
            goto cleanup;
        }
        FUNC10(es, "peer_cert", tmp_file);
    }

    FUNC2(&argv, verify_command);
    FUNC3(&argv, "%d %s", cert_depth, subject);

    FUNC0(D_TLS_DEBUG, &argv, "TLS: executing verify command");
    ret = FUNC8(&argv, es, 0, "--tls-verify script");

    if (verify_export_cert)
    {
        if (tmp_file)
        {
            FUNC9(tmp_file);
        }
    }

cleanup:
    FUNC5(&gc);
    FUNC4(&argv);

    if (ret)
    {
        FUNC7(D_HANDSHAKE, "VERIFY SCRIPT OK: depth=%d, %s",
            cert_depth, subject);
        return SUCCESS;
    }

    FUNC7(D_HANDSHAKE, "VERIFY SCRIPT ERROR: depth=%d, %s",
        cert_depth, subject);
    return FAILURE;             /* Reject connection */
}
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
struct plugin_list {int dummy; } ;
struct env_set {int dummy; } ;
struct argv {int dummy; } ;
typedef  int /*<<< orphan*/  result_t ;
typedef  int /*<<< orphan*/  openvpn_x509_cert_t ;

/* Variables and functions */
 int /*<<< orphan*/  D_HANDSHAKE ; 
 int /*<<< orphan*/  FAILURE ; 
 int OPENVPN_PLUGIN_FUNC_SUCCESS ; 
 int /*<<< orphan*/  OPENVPN_PLUGIN_TLS_VERIFY ; 
 int /*<<< orphan*/  SUCCESS ; 
 struct argv FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct argv*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct argv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int FUNC4 (struct plugin_list const*,int /*<<< orphan*/ ,struct argv*,int /*<<< orphan*/ *,struct env_set*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct plugin_list const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static result_t
FUNC6(const struct plugin_list *plugins, struct env_set *es,
                        int cert_depth, openvpn_x509_cert_t *cert, char *subject)
{
    if (FUNC5(plugins, OPENVPN_PLUGIN_TLS_VERIFY))
    {
        int ret;
        struct argv argv = FUNC0();

        FUNC1(&argv, "%d %s", cert_depth, subject);

        ret = FUNC4(plugins, OPENVPN_PLUGIN_TLS_VERIFY, &argv, NULL, es, cert_depth, cert);

        FUNC2(&argv);

        if (ret == OPENVPN_PLUGIN_FUNC_SUCCESS)
        {
            FUNC3(D_HANDSHAKE, "VERIFY PLUGIN OK: depth=%d, %s",
                cert_depth, subject);
        }
        else
        {
            FUNC3(D_HANDSHAKE, "VERIFY PLUGIN ERROR: depth=%d, %s",
                cert_depth, subject);
            return FAILURE;             /* Reject connection */
        }
    }
    return SUCCESS;
}
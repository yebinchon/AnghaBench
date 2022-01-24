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
struct session {int /*<<< orphan*/  user; int /*<<< orphan*/  key; } ;
struct plugin {int type; } ;
struct openvpn_plugin_args_func_return {int dummy; } ;
struct openvpn_plugin_args_func_in {int /*<<< orphan*/  envp; scalar_t__ per_client_context; scalar_t__ handle; } ;

/* Variables and functions */
#define  CLIENT 129 
 int OPENVPN_PLUGIN_FUNC_ERROR ; 
 int OPENVPN_PLUGIN_FUNC_SUCCESS ; 
#define  SERVER 128 
 int /*<<< orphan*/  FUNC0 (struct openvpn_plugin_args_func_in const*) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct openvpn_plugin_args_func_in const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,char const*) ; 

__attribute__((used)) static int
FUNC5(struct openvpn_plugin_args_func_in const *args,
          struct openvpn_plugin_args_func_return *rv)
{
    struct plugin *plugin = (struct plugin  *)args->handle;
    struct session *sess  = (struct session *)args->per_client_context;

    const char *key;
    if (!(key = FUNC1("exported_keying_material", args->envp)))
    {
        return OPENVPN_PLUGIN_FUNC_ERROR;
    }

    FUNC4(sess->key, sizeof(sess->key) - 1, "%s", key);
    FUNC2("app session key:  %s", sess->key);

    switch (plugin->type)
    {
        case SERVER:
            FUNC3(args);
            break;

        case CLIENT:
            FUNC0(args);
            return OPENVPN_PLUGIN_FUNC_SUCCESS;
    }

    FUNC2("app session user: %s", sess->user);
    return OPENVPN_PLUGIN_FUNC_SUCCESS;
}
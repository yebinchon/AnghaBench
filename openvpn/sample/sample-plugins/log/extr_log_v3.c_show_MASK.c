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

/* Variables and functions */
#define  OPENVPN_PLUGIN_AUTH_USER_PASS_VERIFY 137 
#define  OPENVPN_PLUGIN_CLIENT_CONNECT_V2 136 
#define  OPENVPN_PLUGIN_CLIENT_DISCONNECT 135 
#define  OPENVPN_PLUGIN_DOWN 134 
#define  OPENVPN_PLUGIN_IPCHANGE 133 
#define  OPENVPN_PLUGIN_LEARN_ADDRESS 132 
#define  OPENVPN_PLUGIN_ROUTE_UP 131 
#define  OPENVPN_PLUGIN_TLS_FINAL 130 
#define  OPENVPN_PLUGIN_TLS_VERIFY 129 
#define  OPENVPN_PLUGIN_UP 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void
FUNC1(const int type, const char *argv[], const char *envp[])
{
    size_t i;
    switch (type)
    {
        case OPENVPN_PLUGIN_UP:
            FUNC0("OPENVPN_PLUGIN_UP\n");
            break;

        case OPENVPN_PLUGIN_DOWN:
            FUNC0("OPENVPN_PLUGIN_DOWN\n");
            break;

        case OPENVPN_PLUGIN_ROUTE_UP:
            FUNC0("OPENVPN_PLUGIN_ROUTE_UP\n");
            break;

        case OPENVPN_PLUGIN_IPCHANGE:
            FUNC0("OPENVPN_PLUGIN_IPCHANGE\n");
            break;

        case OPENVPN_PLUGIN_TLS_VERIFY:
            FUNC0("OPENVPN_PLUGIN_TLS_VERIFY\n");
            break;

        case OPENVPN_PLUGIN_AUTH_USER_PASS_VERIFY:
            FUNC0("OPENVPN_PLUGIN_AUTH_USER_PASS_VERIFY\n");
            break;

        case OPENVPN_PLUGIN_CLIENT_CONNECT_V2:
            FUNC0("OPENVPN_PLUGIN_CLIENT_CONNECT_V2\n");
            break;

        case OPENVPN_PLUGIN_CLIENT_DISCONNECT:
            FUNC0("OPENVPN_PLUGIN_CLIENT_DISCONNECT\n");
            break;

        case OPENVPN_PLUGIN_LEARN_ADDRESS:
            FUNC0("OPENVPN_PLUGIN_LEARN_ADDRESS\n");
            break;

        case OPENVPN_PLUGIN_TLS_FINAL:
            FUNC0("OPENVPN_PLUGIN_TLS_FINAL\n");
            break;

        default:
            FUNC0("OPENVPN_PLUGIN_?\n");
            break;
    }

    FUNC0("ARGV\n");
    for (i = 0; argv[i] != NULL; ++i)
    {
        FUNC0("%d '%s'\n", (int)i, argv[i]);
    }

    FUNC0("ENVP\n");
    for (i = 0; envp[i] != NULL; ++i)
    {
        FUNC0("%d '%s'\n", (int)i, envp[i]);
    }
}
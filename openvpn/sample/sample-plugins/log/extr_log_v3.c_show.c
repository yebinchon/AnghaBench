
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

void
show(const int type, const char *argv[], const char *envp[])
{
    size_t i;
    switch (type)
    {
        case 128:
            printf("OPENVPN_PLUGIN_UP\n");
            break;

        case 134:
            printf("OPENVPN_PLUGIN_DOWN\n");
            break;

        case 131:
            printf("OPENVPN_PLUGIN_ROUTE_UP\n");
            break;

        case 133:
            printf("OPENVPN_PLUGIN_IPCHANGE\n");
            break;

        case 129:
            printf("OPENVPN_PLUGIN_TLS_VERIFY\n");
            break;

        case 137:
            printf("OPENVPN_PLUGIN_AUTH_USER_PASS_VERIFY\n");
            break;

        case 136:
            printf("OPENVPN_PLUGIN_CLIENT_CONNECT_V2\n");
            break;

        case 135:
            printf("OPENVPN_PLUGIN_CLIENT_DISCONNECT\n");
            break;

        case 132:
            printf("OPENVPN_PLUGIN_LEARN_ADDRESS\n");
            break;

        case 130:
            printf("OPENVPN_PLUGIN_TLS_FINAL\n");
            break;

        default:
            printf("OPENVPN_PLUGIN_?\n");
            break;
    }

    printf("ARGV\n");
    for (i = 0; argv[i] != ((void*)0); ++i)
    {
        printf("%d '%s'\n", (int)i, argv[i]);
    }

    printf("ENVP\n");
    for (i = 0; envp[i] != ((void*)0); ++i)
    {
        printf("%d '%s'\n", (int)i, envp[i]);
    }
}

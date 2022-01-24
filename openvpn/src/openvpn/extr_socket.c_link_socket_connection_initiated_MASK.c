#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct link_socket_info {int connection_established; scalar_t__ ipchange_command; int /*<<< orphan*/  plugins; TYPE_1__* lsa; } ;
struct link_socket_actual {int dummy; } ;
struct gc_arena {int dummy; } ;
struct env_set {int dummy; } ;
struct buffer {int dummy; } ;
struct argv {int dummy; } ;
struct TYPE_2__ {struct link_socket_actual actual; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer*) ; 
 int /*<<< orphan*/  M_INFO ; 
 int /*<<< orphan*/  M_WARN ; 
 scalar_t__ OPENVPN_PLUGIN_FUNC_SUCCESS ; 
 int /*<<< orphan*/  OPENVPN_PLUGIN_IPCHANGE ; 
 struct buffer FUNC1 (int,struct gc_arena*) ; 
 struct argv FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct argv*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct gc_arena*) ; 
 struct gc_arena FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,struct argv*,struct link_socket_info*,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct argv*,struct env_set*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct argv*,int /*<<< orphan*/ *,struct env_set*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char const* FUNC12 (struct link_socket_actual*,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC13 (struct env_set*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC14 (struct env_set*,struct link_socket_info*) ; 

void
FUNC15(const struct buffer *buf,
                                 struct link_socket_info *info,
                                 const struct link_socket_actual *act,
                                 const char *common_name,
                                 struct env_set *es)
{
    struct gc_arena gc = FUNC6();

    info->lsa->actual = *act; /* Note: skip this line for --force-dest */
    FUNC14(es, info);
    info->connection_established = true;

    /* Print connection initiated message, with common name if available */
    {
        struct buffer out = FUNC1(256, &gc);
        if (common_name)
        {
            FUNC4(&out, "[%s] ", common_name);
        }
        FUNC4(&out, "Peer Connection Initiated with %s", FUNC12(&info->lsa->actual, &gc));
        FUNC8(M_INFO, "%s", FUNC0(&out));
    }

    /* set environmental vars */
    FUNC13(es, "common_name", common_name);

    /* Process --ipchange plugin */
    if (FUNC11(info->plugins, OPENVPN_PLUGIN_IPCHANGE))
    {
        struct argv argv = FUNC2();
        FUNC7(false, &argv, info, &gc);
        if (FUNC10(info->plugins, OPENVPN_PLUGIN_IPCHANGE, &argv, NULL, es) != OPENVPN_PLUGIN_FUNC_SUCCESS)
        {
            FUNC8(M_WARN, "WARNING: ipchange plugin call failed");
        }
        FUNC3(&argv);
    }

    /* Process --ipchange option */
    if (info->ipchange_command)
    {
        struct argv argv = FUNC2();
        FUNC13(es, "script_type", "ipchange");
        FUNC7(true, &argv, info, &gc);
        FUNC9(&argv, es, 0, "--ipchange");
        FUNC3(&argv);
    }

    FUNC5(&gc);
}
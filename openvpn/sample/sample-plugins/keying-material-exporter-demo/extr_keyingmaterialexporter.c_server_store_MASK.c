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
struct session {char* key; int /*<<< orphan*/  user; } ;
struct plugin {int dummy; } ;
struct openvpn_plugin_args_func_in {scalar_t__ per_client_context; scalar_t__ handle; } ;
typedef  int /*<<< orphan*/  file ;

/* Variables and functions */
 int MAXPATH ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 

__attribute__((used)) static void
FUNC3(struct openvpn_plugin_args_func_in const *args)
{
    struct plugin *plugin = (struct plugin  *)args->handle;
    struct session *sess  = (struct session *)args->per_client_context;

    char file[MAXPATH];
    FUNC2(file, sizeof(file) - 1, "/tmp/openvpn_sso_%s", sess->key);
    FUNC1("app session file: %s", file);
    FUNC0(file, sess->user);
}
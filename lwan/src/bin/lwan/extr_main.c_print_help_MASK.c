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
struct lwan_config {char* listener; } ;
typedef  int /*<<< orphan*/  path_buf ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 () ; 
 char* FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void
FUNC4(const char *argv0, const struct lwan_config *config)
{
    char path_buf[PATH_MAX];
    char *current_dir = FUNC1();
    const char *config_file = FUNC2(path_buf, sizeof(path_buf));

    FUNC3("Usage: %s [--root /path/to/root/dir] [--listen addr:port]\n", argv0);
    FUNC3("\t[--config] [--user username] [--chroot] [--modules|--handlers]\n");
    FUNC3("Serve files through HTTP.\n\n");
    FUNC3("Options:\n");
    FUNC3("\t-r, --root      Path to serve files from (default: ./wwwroot).\n");
    FUNC3("\t-l, --listen    Listener (default: %s).\n", config->listener);
    FUNC3("\t-c, --config    Path to config file path.\n");
    FUNC3("\t-u, --user      Username to drop privileges to (root required).\n");
    FUNC3("\t-C, --chroot    Chroot to path passed to --root (root required).\n");
    FUNC3("\t-m, --modules   Print information about available modules.\n");
    FUNC3("\t-H, --handlers  Print information about available handlers.\n");
    FUNC3("\t-h, --help      This.\n");
    FUNC3("\n");
    FUNC3("Examples:\n");
    FUNC3("  Serve system-wide documentation:\n");
    FUNC3("        %s -r /usr/share/doc\n", argv0);
    FUNC3("  Serve on a different port:\n");
    FUNC3("        %s -l '*:1337'\n", argv0);
    FUNC3("  Use %s from %s:\n", config_file, current_dir);
    FUNC3("        %s\n", argv0);
    FUNC3("  Use /etc/%s:\n", config_file);
    FUNC3("        %s -c /etc/%s\n", argv0, config_file);
    FUNC3("\n");
    FUNC3("Report bugs at <https://github.com/lpereira/lwan>.\n");

    FUNC0(current_dir);
}
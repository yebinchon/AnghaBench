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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 

__attribute__((used)) static void FUNC5(void)
{
    static const char * usage =
        "Usage: php\n"
        "      php -[b|c|n|h|i|q|s|v|?] [<file>] [args...]\n"
        "  Run in LSAPI mode, only '-b', '-s' and '-c' are effective\n"
        "  Run in Command Line Interpreter mode when parameters are specified\n"
        "\n"
        "  -b <address:port>|<port> Bind Path for external LSAPI Server mode\n"
        "  -c <path>|<file> Look for php.ini file in this directory\n"
        "  -n    No php.ini file will be used\n"
        "  -h    This help\n"
        "  -i    PHP information\n"
        "  -l    Syntax check\n"
        "  -q    Quiet-mode.  Suppress HTTP Header output.\n"
        "  -s    Display colour syntax highlighted source.\n"
        "  -v    Version number\n"
        "  -?    This help\n"
        "\n"
        "  args...    Arguments passed to script.\n";
    FUNC3();
    FUNC1();
    FUNC4( "%s", usage );
#ifdef PHP_OUTPUT_NEWAPI
    php_output_end_all();
#else
    FUNC0(1);
#endif
}
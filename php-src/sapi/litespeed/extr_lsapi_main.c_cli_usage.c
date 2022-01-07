
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int php_end_ob_buffers (int) ;
 int php_output_activate () ;
 int php_output_end_all () ;
 int php_output_startup () ;
 int php_printf (char*,char const*) ;

__attribute__((used)) static void cli_usage(void)
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
    php_output_startup();
    php_output_activate();
    php_printf( "%s", usage );



    php_end_ob_buffers(1);

}

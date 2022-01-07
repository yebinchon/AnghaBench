
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_OPENVPN ;
 int LOG_PID ;
 int M_WARN ;
 char const* PACKAGE ;
 int msg (int ,char*) ;
 int msgfp ;
 int openlog (int ,int ,int ) ;
 int pgmname_syslog ;
 int set_std_files_to_null (int) ;
 int std_redir ;
 int string_alloc (char const*,int *) ;
 int use_syslog ;

void
open_syslog(const char *pgmname, bool stdio_to_null)
{
    msg(M_WARN, "Warning on use of --daemon/--inetd: this operating system lacks daemon logging features, therefore when I become a daemon, I won't be able to log status or error messages");

}

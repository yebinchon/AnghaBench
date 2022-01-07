
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct win_version_info {int major; int minor; } ;


 int get_win_ver (struct win_version_info*) ;
 int log_admin_status () ;
 int log_aero () ;
 int log_available_memory () ;
 int log_gaming_features () ;
 int log_processor_cores () ;
 int log_processor_info () ;
 int log_security_products () ;
 int log_windows_version () ;
 int win_ver ;

void log_system_info(void)
{
 struct win_version_info ver;
 get_win_ver(&ver);

 win_ver = (ver.major << 8) | ver.minor;

 log_processor_info();
 log_processor_cores();
 log_available_memory();
 log_windows_version();
 log_admin_status();
 log_aero();
 log_gaming_features();
 log_security_products();
}

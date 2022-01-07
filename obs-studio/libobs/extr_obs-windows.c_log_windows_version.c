
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct win_version_info {int revis; int build; int minor; int major; } ;


 int LOG_INFO ;
 int blog (int ,char*,int ,int ,int ,int ,char const*) ;
 int get_win_ver (struct win_version_info*) ;
 int is_64_bit_windows () ;

__attribute__((used)) static void log_windows_version(void)
{
 struct win_version_info ver;
 get_win_ver(&ver);

 bool b64 = is_64_bit_windows();
 const char *windows_bitness = b64 ? "64" : "32";

 blog(LOG_INFO, "Windows Version: %d.%d Build %d (revision: %d; %s-bit)",
      ver.major, ver.minor, ver.build, ver.revis, windows_bitness);
}

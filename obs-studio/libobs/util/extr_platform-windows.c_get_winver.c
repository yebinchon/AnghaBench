
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct win_version_info {int major; int minor; } ;


 int get_win_ver (struct win_version_info*) ;
 int winver ;

__attribute__((used)) static inline uint32_t get_winver(void)
{
 if (!winver) {
  struct win_version_info ver;
  get_win_ver(&ver);
  winver = (ver.major << 8) | ver.minor;
 }

 return winver;
}

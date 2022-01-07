
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwinfo_ops {int dummy; } ;


 struct iwinfo_ops* iwinfo_backend (char const*) ;

int open_backend(const struct iwinfo_ops **iw, const char *ifname)
{
 *iw = iwinfo_backend(ifname);

 if (!(*iw))
  return 1;

 return 0;
}

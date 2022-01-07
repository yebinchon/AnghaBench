
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ARRAY_SIZE (char**) ;
 int ERR (char*) ;
 char** ifname ;
 scalar_t__ num_files ;

__attribute__((used)) static int process_ifname(char *name)
{
 if (num_files >= ARRAY_SIZE(ifname)) {
  ERR("too many input files specified");
  return -1;
 }

 ifname[num_files++] = name;
 return 0;
}

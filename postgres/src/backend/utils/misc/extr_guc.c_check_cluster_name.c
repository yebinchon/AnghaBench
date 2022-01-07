
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GucSource ;


 int pg_clean_ascii (char*) ;

__attribute__((used)) static bool
check_cluster_name(char **newval, void **extra, GucSource source)
{

 pg_clean_ascii(*newval);

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int br_foreach_port (char const*,int ,void*) ;
 int check_bridge_port ;

__attribute__((used)) static int
check_bridge(const char *name, void *arg)
{
 br_foreach_port(name, check_bridge_port, arg);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* make_path (int,int) ;

__attribute__((used)) static const char *make_output_path(int cpu_num)
{
 return make_path(cpu_num, 1);
}

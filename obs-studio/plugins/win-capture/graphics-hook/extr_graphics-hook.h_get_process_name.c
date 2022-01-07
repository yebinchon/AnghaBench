
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* process_name ;

__attribute__((used)) static inline const char *get_process_name(void)
{
 return process_name;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ r_syscmd_mv (char const*) ;

__attribute__((used)) static int cmd_mv(void *data, const char *input) {
 return r_syscmd_mv (input)? 1: 0;
}

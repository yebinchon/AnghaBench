
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* x_msg_prefix ;

__attribute__((used)) static inline void
msg_set_prefix(const char *prefix)
{
    x_msg_prefix = prefix;
}

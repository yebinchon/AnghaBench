
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_output {int dummy; } ;


 struct virtual_output const* x_msg_virtual_output ;

__attribute__((used)) static inline void
msg_set_virtual_output(const struct virtual_output *vo)
{
    x_msg_virtual_output = vo;
}

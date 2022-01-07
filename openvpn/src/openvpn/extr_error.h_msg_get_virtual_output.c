
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_output {int dummy; } ;


 struct virtual_output const* x_msg_virtual_output ;

__attribute__((used)) static inline const struct virtual_output *
msg_get_virtual_output(void)
{
    return x_msg_virtual_output;
}

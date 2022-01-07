
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ residual_fully_formed; } ;
struct link_socket {TYPE_1__ stream_buf; } ;



__attribute__((used)) static inline bool
socket_read_residual(const struct link_socket *s)
{
    return s && s->stream_buf.residual_fully_formed;
}

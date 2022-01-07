
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buf; } ;
typedef TYPE_1__ BufferObject ;


 scalar_t__ INVALID_BUFFER_VALUE ;
 int N_ (char*) ;
 int PyErr_SET_VIM (int ) ;

__attribute__((used)) static int
CheckBuffer(BufferObject *self)
{
    if (self->buf == INVALID_BUFFER_VALUE)
    {
 PyErr_SET_VIM(N_("attempt to refer to deleted buffer"));
 return -1;
    }

    return 0;
}

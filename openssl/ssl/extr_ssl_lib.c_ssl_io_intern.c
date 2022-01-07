
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* func_read ) (TYPE_2__*,void*,size_t,int *) ;int (* func_write ) (TYPE_2__*,void*,size_t,int *) ;int (* func_other ) (TYPE_2__*) ;} ;
struct ssl_async_args {size_t num; int type; TYPE_1__ f; void* buf; TYPE_2__* s; } ;
struct TYPE_7__ {int asyncrw; } ;
typedef TYPE_2__ SSL ;





 int stub1 (TYPE_2__*,void*,size_t,int *) ;
 int stub2 (TYPE_2__*,void*,size_t,int *) ;
 int stub3 (TYPE_2__*) ;

__attribute__((used)) static int ssl_io_intern(void *vargs)
{
    struct ssl_async_args *args;
    SSL *s;
    void *buf;
    size_t num;

    args = (struct ssl_async_args *)vargs;
    s = args->s;
    buf = args->buf;
    num = args->num;
    switch (args->type) {
    case 129:
        return args->f.func_read(s, buf, num, &s->asyncrw);
    case 128:
        return args->f.func_write(s, buf, num, &s->asyncrw);
    case 130:
        return args->f.func_other(s);
    }
    return -1;
}

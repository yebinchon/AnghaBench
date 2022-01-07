
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream {int cancel; } ;


 int mp_cancel_test (int ) ;

__attribute__((used)) static int interrupt_cb(void *ctx)
{
    struct stream *stream = ctx;
    return mp_cancel_test(stream->cancel);
}

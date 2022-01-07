
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demuxer {int cancel; } ;


 int mp_cancel_test (int ) ;

__attribute__((used)) static int interrupt_cb(void *ctx)
{
    struct demuxer *demuxer = ctx;
    return mp_cancel_test(demuxer->cancel);
}

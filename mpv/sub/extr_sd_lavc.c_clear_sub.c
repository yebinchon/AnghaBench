
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sub {int valid; int avsub; void* endpts; void* pts; scalar_t__ count; } ;


 void* MP_NOPTS_VALUE ;
 int avsubtitle_free (int *) ;

__attribute__((used)) static void clear_sub(struct sub *sub)
{
    sub->count = 0;
    sub->pts = MP_NOPTS_VALUE;
    sub->endpts = MP_NOPTS_VALUE;
    if (sub->valid)
        avsubtitle_free(&sub->avsub);
    sub->valid = 0;
}

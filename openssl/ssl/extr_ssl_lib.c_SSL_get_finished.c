
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t finish_md_len; int finish_md; } ;
struct TYPE_6__ {TYPE_1__ tmp; } ;
struct TYPE_7__ {TYPE_2__ s3; } ;
typedef TYPE_3__ SSL ;


 int memcpy (void*,int ,size_t) ;

size_t SSL_get_finished(const SSL *s, void *buf, size_t count)
{
    size_t ret = 0;

    ret = s->s3.tmp.finish_md_len;
    if (count > ret)
        count = ret;
    memcpy(buf, s->s3.tmp.finish_md, count);
    return ret;
}

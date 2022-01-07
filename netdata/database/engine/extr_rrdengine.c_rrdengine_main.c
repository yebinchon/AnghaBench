
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rrdengine_instance {int dummy; } ;


 int RRDENG_MIN_DISK_SPACE_MB ;
 int RRDENG_MIN_PAGE_CACHE_SIZE_MB ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int rrdeng_exit (struct rrdengine_instance*) ;
 int rrdeng_init (struct rrdengine_instance**,char*,int ,int ) ;
 int stderr ;

void rrdengine_main(void)
{
    int ret;
    struct rrdengine_instance *ctx;

    ret = rrdeng_init(&ctx, "/tmp", RRDENG_MIN_PAGE_CACHE_SIZE_MB, RRDENG_MIN_DISK_SPACE_MB);
    if (ret) {
        exit(ret);
    }
    rrdeng_exit(ctx);
    fprintf(stderr, "Hello world!");
    exit(0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rrdengine_instance {int dummy; } ;


 int init_data_files (struct rrdengine_instance*) ;

int init_rrd_files(struct rrdengine_instance *ctx)
{
    return init_data_files(ctx);
}

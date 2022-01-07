
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rrdengine_worker_config {int dummy; } ;
struct extent_io_descriptor {int dummy; } ;



 int assert (int) ;
 int commit_data_extent (struct rrdengine_worker_config*,struct extent_io_descriptor*) ;

__attribute__((used)) static void do_commit_transaction(struct rrdengine_worker_config* wc, uint8_t type, void *data)
{
    switch (type) {
    case 128:
        commit_data_extent(wc, (struct extent_io_descriptor *)data);
        break;
    default:
        assert(type == 128);
        break;
    }
}

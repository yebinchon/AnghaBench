
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_8__ {int (* flush ) (TYPE_2__*,int ) ;} ;
typedef TYPE_2__ ngx_open_file_t ;
struct TYPE_9__ {size_t nelts; TYPE_2__* elts; struct TYPE_9__* next; } ;
typedef TYPE_3__ ngx_list_part_t ;
struct TYPE_7__ {TYPE_3__ part; } ;
struct TYPE_10__ {int log; TYPE_1__ open_files; } ;
typedef TYPE_4__ ngx_cycle_t ;


 int NGX_LOG_DEBUG_CORE ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static void
ngx_conf_flush_files(ngx_cycle_t *cycle)
{
    ngx_uint_t i;
    ngx_list_part_t *part;
    ngx_open_file_t *file;

    ngx_log_debug0(NGX_LOG_DEBUG_CORE, cycle->log, 0, "flush files");

    part = &cycle->open_files.part;
    file = part->elts;

    for (i = 0; ; i++) {

        if (i >= part->nelts) {
            if (part->next == ((void*)0)) {
                break;
            }
            part = part->next;
            file = part->elts;
            i = 0;
        }

        if (file[i].flush) {
            file[i].flush(&file[i], cycle->log);
        }
    }
}

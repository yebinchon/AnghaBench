
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_9__ {scalar_t__ loader; scalar_t__ manager; } ;
typedef TYPE_2__ ngx_path_t ;
typedef int ngx_cycle_t ;
struct TYPE_10__ {size_t slot; int fd; int pid; void* command; } ;
typedef TYPE_3__ ngx_channel_t ;
struct TYPE_8__ {size_t nelts; TYPE_2__** elts; } ;
struct TYPE_12__ {TYPE_1__ paths; } ;
struct TYPE_11__ {int * channel; int pid; } ;


 void* NGX_CMD_OPEN_CHANNEL ;
 int NGX_PROCESS_JUST_RESPAWN ;
 int NGX_PROCESS_JUST_SPAWN ;
 int NGX_PROCESS_NORESPAWN ;
 int NGX_PROCESS_RESPAWN ;
 int ngx_cache_loader_ctx ;
 int ngx_cache_manager_ctx ;
 int ngx_cache_manager_process_cycle ;
 TYPE_7__* ngx_cycle ;
 int ngx_memzero (TYPE_3__*,int) ;
 int ngx_pass_open_channel (int *,TYPE_3__*) ;
 size_t ngx_process_slot ;
 TYPE_4__* ngx_processes ;
 int ngx_spawn_process (int *,int ,int *,char*,int ) ;

__attribute__((used)) static void
ngx_start_cache_manager_processes(ngx_cycle_t *cycle, ngx_uint_t respawn)
{
    ngx_uint_t i, manager, loader;
    ngx_path_t **path;
    ngx_channel_t ch;

    manager = 0;
    loader = 0;

    path = ngx_cycle->paths.elts;
    for (i = 0; i < ngx_cycle->paths.nelts; i++) {

        if (path[i]->manager) {
            manager = 1;
        }

        if (path[i]->loader) {
            loader = 1;
        }
    }

    if (manager == 0) {
        return;
    }

    ngx_spawn_process(cycle, ngx_cache_manager_process_cycle,
                      &ngx_cache_manager_ctx, "cache manager process",
                      respawn ? NGX_PROCESS_JUST_RESPAWN : NGX_PROCESS_RESPAWN);

    ngx_memzero(&ch, sizeof(ngx_channel_t));

    ch.command = NGX_CMD_OPEN_CHANNEL;
    ch.pid = ngx_processes[ngx_process_slot].pid;
    ch.slot = ngx_process_slot;
    ch.fd = ngx_processes[ngx_process_slot].channel[0];

    ngx_pass_open_channel(cycle, &ch);

    if (loader == 0) {
        return;
    }

    ngx_spawn_process(cycle, ngx_cache_manager_process_cycle,
                      &ngx_cache_loader_ctx, "cache loader process",
                      respawn ? NGX_PROCESS_JUST_SPAWN : NGX_PROCESS_NORESPAWN);

    ch.command = NGX_CMD_OPEN_CHANNEL;
    ch.pid = ngx_processes[ngx_process_slot].pid;
    ch.slot = ngx_process_slot;
    ch.fd = ngx_processes[ngx_process_slot].channel[0];

    ngx_pass_open_channel(cycle, &ch);
}

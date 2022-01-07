
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_10__ {TYPE_2__* out; } ;
typedef TYPE_3__ ngx_http_mp4_trak_t ;
struct TYPE_8__ {int log; } ;
struct TYPE_11__ {TYPE_1__ file; } ;
typedef TYPE_4__ ngx_http_mp4_file_t ;
struct TYPE_12__ {scalar_t__ last; scalar_t__ pos; } ;
typedef TYPE_5__ ngx_buf_t ;
typedef scalar_t__ int32_t ;
struct TYPE_9__ {TYPE_5__* buf; } ;


 size_t NGX_HTTP_MP4_STCO_DATA ;
 int NGX_LOG_DEBUG_HTTP ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_mp4_get_32value (int *) ;
 int ngx_mp4_set_32value (int *,int ) ;

__attribute__((used)) static void
ngx_http_mp4_adjust_stco_atom(ngx_http_mp4_file_t *mp4,
    ngx_http_mp4_trak_t *trak, int32_t adjustment)
{
    uint32_t offset, *entry, *end;
    ngx_buf_t *data;






    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0,
                   "mp4 stco atom adjustment");

    data = trak->out[NGX_HTTP_MP4_STCO_DATA].buf;
    entry = (uint32_t *) data->pos;
    end = (uint32_t *) data->last;

    while (entry < end) {
        offset = ngx_mp4_get_32value(entry);
        offset += adjustment;
        ngx_mp4_set_32value(entry, offset);
        entry++;
    }
}

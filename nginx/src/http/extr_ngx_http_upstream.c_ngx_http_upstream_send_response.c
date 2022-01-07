
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_74__ TYPE_9__ ;
typedef struct TYPE_73__ TYPE_8__ ;
typedef struct TYPE_72__ TYPE_7__ ;
typedef struct TYPE_71__ TYPE_6__ ;
typedef struct TYPE_70__ TYPE_5__ ;
typedef struct TYPE_69__ TYPE_50__ ;
typedef struct TYPE_68__ TYPE_4__ ;
typedef struct TYPE_67__ TYPE_49__ ;
typedef struct TYPE_66__ TYPE_46__ ;
typedef struct TYPE_65__ TYPE_3__ ;
typedef struct TYPE_64__ TYPE_2__ ;
typedef struct TYPE_63__ TYPE_25__ ;
typedef struct TYPE_62__ TYPE_20__ ;
typedef struct TYPE_61__ TYPE_1__ ;
typedef struct TYPE_60__ TYPE_19__ ;
typedef struct TYPE_59__ TYPE_18__ ;
typedef struct TYPE_58__ TYPE_17__ ;
typedef struct TYPE_57__ TYPE_16__ ;
typedef struct TYPE_56__ TYPE_15__ ;
typedef struct TYPE_55__ TYPE_14__ ;
typedef struct TYPE_54__ TYPE_13__ ;
typedef struct TYPE_53__ TYPE_12__ ;
typedef struct TYPE_52__ TYPE_11__ ;
typedef struct TYPE_51__ TYPE_10__ ;


typedef scalar_t__ u_short ;
typedef scalar_t__ time_t ;
typedef scalar_t__ ssize_t ;
typedef int ngx_temp_file_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_55__ {int recycled; scalar_t__ pos; scalar_t__ last; scalar_t__ start; } ;
struct TYPE_51__ {TYPE_9__* connection; } ;
struct TYPE_73__ {int tag; } ;
struct TYPE_72__ {scalar_t__ status_n; int last_modified_time; TYPE_6__* etag; } ;
struct TYPE_57__ {int header_sent; scalar_t__ (* input_filter ) (TYPE_17__*,scalar_t__) ;scalar_t__ (* input_filter_init ) (TYPE_17__*) ;scalar_t__ length; int (* read_event_handler ) (TYPE_17__*,TYPE_16__*) ;TYPE_15__* conf; TYPE_14__ buffer; int cacheable; scalar_t__ store; TYPE_10__ peer; TYPE_8__ output; TYPE_19__* pipe; TYPE_7__ headers_in; int cache_status; TYPE_17__* input_filter_ctx; TYPE_4__* state; int buffering; scalar_t__ upgrade; } ;
typedef TYPE_16__ ngx_http_upstream_t ;
struct TYPE_58__ {int limit_rate_set; int (* write_event_handler ) (TYPE_17__*) ;int pool; TYPE_46__* cache; scalar_t__ header_only; scalar_t__ limit_rate; TYPE_3__* request_body; int preserve_body; struct TYPE_58__* main; TYPE_20__* connection; scalar_t__ post_action; } ;
typedef TYPE_17__ ngx_http_request_t ;
struct TYPE_59__ {scalar_t__ aio; int send_lowat; int send_timeout; scalar_t__ aio_write; scalar_t__ tcp_nodelay; } ;
typedef TYPE_18__ ngx_http_core_loc_conf_t ;
struct TYPE_60__ {int downstream_error; int cacheable; int single_buf; int free_bufs; int cyclic_temp_file; int length; TYPE_17__* input_ctx; int send_lowat; int send_timeout; int read_timeout; TYPE_49__* buf_to_file; scalar_t__ preread_size; TYPE_50__* preread_bufs; TYPE_17__* thread_ctx; int thread_handler; int temp_file_write_size; int max_temp_file_size; TYPE_25__* temp_file; void* start_sec; int limit_rate; int log; int pool; TYPE_20__* downstream; TYPE_9__* upstream; int busy_size; int bufs; int tag; TYPE_17__* output_ctx; int output_filter; } ;
typedef TYPE_19__ ngx_event_pipe_t ;
struct TYPE_62__ {scalar_t__ sendfile; int log; } ;
typedef TYPE_20__ ngx_connection_t ;
struct TYPE_74__ {TYPE_5__* read; } ;
struct TYPE_71__ {int value; } ;
struct TYPE_70__ {scalar_t__ ready; } ;
struct TYPE_69__ {int * next; TYPE_14__* buf; } ;
struct TYPE_68__ {int response_length; } ;
struct TYPE_67__ {int temporary; scalar_t__ last; scalar_t__ pos; scalar_t__ start; } ;
struct TYPE_54__ {scalar_t__ fd; int name; } ;
struct TYPE_66__ {scalar_t__ valid_sec; int last_modified; TYPE_13__ file; TYPE_11__* file_cache; int etag; scalar_t__ body_start; scalar_t__ date; } ;
struct TYPE_65__ {TYPE_2__* temp_file; } ;
struct TYPE_61__ {scalar_t__ fd; } ;
struct TYPE_64__ {TYPE_1__ file; } ;
struct TYPE_53__ {int name; int log; scalar_t__ fd; } ;
struct TYPE_63__ {int persistent; char* warn; int log_level; TYPE_12__ file; int path; int pool; } ;
struct TYPE_56__ {int read_timeout; scalar_t__ cyclic_temp_file; int temp_file_write_size; int max_temp_file_size; int temp_path; int limit_rate; int busy_buffers_size; int bufs; int cache_valid; int no_cache; int preserve_output; } ;
struct TYPE_52__ {int path; int use_temp_path; } ;




 scalar_t__ NGX_HTTP_AIO_THREADS ;
 int NGX_HTTP_CACHE_BYPASS ;
 int NGX_HTTP_FLUSH ;
 scalar_t__ NGX_HTTP_OK ;
 scalar_t__ NGX_HTTP_PARTIAL_CONTENT ;
 scalar_t__ NGX_INVALID_FILE ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_WARN ;
 scalar_t__ NGX_OK ;
 int NGX_USE_IOCP_EVENT ;
 TYPE_50__* ngx_alloc_chain_link (int ) ;
 TYPE_49__* ngx_calloc_buf (int ) ;
 int ngx_event_flags ;
 int ngx_http_core_module ;
 scalar_t__ ngx_http_file_cache_create (TYPE_17__*) ;
 int ngx_http_file_cache_free (TYPE_46__*,TYPE_25__*) ;
 scalar_t__ ngx_http_file_cache_set_header (TYPE_17__*,scalar_t__) ;
 scalar_t__ ngx_http_file_cache_valid (int ,scalar_t__) ;
 TYPE_18__* ngx_http_get_module_loc_conf (TYPE_17__*,int ) ;
 scalar_t__ ngx_http_send_header (TYPE_17__*) ;
 scalar_t__ ngx_http_send_special (TYPE_17__*,int ) ;
 int ngx_http_test_predicates (TYPE_17__*,int ) ;
 int ngx_http_upstream_finalize_request (TYPE_17__*,TYPE_16__*,scalar_t__ const) ;
 scalar_t__ ngx_http_upstream_non_buffered_filter (TYPE_17__*,scalar_t__) ;
 scalar_t__ ngx_http_upstream_non_buffered_filter_init (TYPE_17__*) ;
 int ngx_http_upstream_output_filter ;
 int ngx_http_upstream_process_downstream (TYPE_17__*) ;
 int ngx_http_upstream_process_non_buffered_downstream (TYPE_17__*) ;
 int ngx_http_upstream_process_non_buffered_upstream (TYPE_17__*,TYPE_16__*) ;
 int ngx_http_upstream_process_upstream (TYPE_17__*,TYPE_16__*) ;
 int ngx_http_upstream_thread_handler ;
 int ngx_http_upstream_upgrade (TYPE_17__*,TYPE_16__*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 TYPE_25__* ngx_pcalloc (int ,int) ;
 int ngx_pool_run_cleanup_file (int ,scalar_t__) ;
 int ngx_str_null (int *) ;
 scalar_t__ ngx_tcp_nodelay (TYPE_20__*) ;
 void* ngx_time () ;
 scalar_t__ stub1 (TYPE_17__*) ;
 scalar_t__ stub2 (TYPE_17__*,scalar_t__) ;
 scalar_t__ stub3 (TYPE_17__*) ;

__attribute__((used)) static void
ngx_http_upstream_send_response(ngx_http_request_t *r, ngx_http_upstream_t *u)
{
    ssize_t n;
    ngx_int_t rc;
    ngx_event_pipe_t *p;
    ngx_connection_t *c;
    ngx_http_core_loc_conf_t *clcf;

    rc = ngx_http_send_header(r);

    if (rc == 128 || rc > NGX_OK || r->post_action) {
        ngx_http_upstream_finalize_request(r, u, rc);
        return;
    }

    u->header_sent = 1;

    if (u->upgrade) {
        ngx_http_upstream_upgrade(r, u);
        return;
    }

    c = r->connection;

    if (r->header_only) {

        if (!u->buffering) {
            ngx_http_upstream_finalize_request(r, u, rc);
            return;
        }

        if (!u->cacheable && !u->store) {
            ngx_http_upstream_finalize_request(r, u, rc);
            return;
        }

        u->pipe->downstream_error = 1;
    }

    if (r->request_body && r->request_body->temp_file
        && r == r->main && !r->preserve_body
        && !u->conf->preserve_output)
    {
        ngx_pool_run_cleanup_file(r->pool, r->request_body->temp_file->file.fd);
        r->request_body->temp_file->file.fd = NGX_INVALID_FILE;
    }

    clcf = ngx_http_get_module_loc_conf(r, ngx_http_core_module);

    if (!u->buffering) {
        if (u->input_filter == ((void*)0)) {
            u->input_filter_init = ngx_http_upstream_non_buffered_filter_init;
            u->input_filter = ngx_http_upstream_non_buffered_filter;
            u->input_filter_ctx = r;
        }

        u->read_event_handler = ngx_http_upstream_process_non_buffered_upstream;
        r->write_event_handler =
                             ngx_http_upstream_process_non_buffered_downstream;

        r->limit_rate = 0;
        r->limit_rate_set = 1;

        if (u->input_filter_init(u->input_filter_ctx) == 128) {
            ngx_http_upstream_finalize_request(r, u, 128);
            return;
        }

        if (clcf->tcp_nodelay && ngx_tcp_nodelay(c) != NGX_OK) {
            ngx_http_upstream_finalize_request(r, u, 128);
            return;
        }

        n = u->buffer.last - u->buffer.pos;

        if (n) {
            u->buffer.last = u->buffer.pos;

            u->state->response_length += n;

            if (u->input_filter(u->input_filter_ctx, n) == 128) {
                ngx_http_upstream_finalize_request(r, u, 128);
                return;
            }

            ngx_http_upstream_process_non_buffered_downstream(r);

        } else {
            u->buffer.pos = u->buffer.start;
            u->buffer.last = u->buffer.start;

            if (ngx_http_send_special(r, NGX_HTTP_FLUSH) == 128) {
                ngx_http_upstream_finalize_request(r, u, 128);
                return;
            }

            if (u->peer.connection->read->ready || u->length == 0) {
                ngx_http_upstream_process_non_buffered_upstream(r, u);
            }
        }

        return;
    }
    p = u->pipe;

    p->output_filter = ngx_http_upstream_output_filter;
    p->output_ctx = r;
    p->tag = u->output.tag;
    p->bufs = u->conf->bufs;
    p->busy_size = u->conf->busy_buffers_size;
    p->upstream = u->peer.connection;
    p->downstream = c;
    p->pool = r->pool;
    p->log = c->log;
    p->limit_rate = u->conf->limit_rate;
    p->start_sec = ngx_time();

    p->cacheable = u->cacheable || u->store;

    p->temp_file = ngx_pcalloc(r->pool, sizeof(ngx_temp_file_t));
    if (p->temp_file == ((void*)0)) {
        ngx_http_upstream_finalize_request(r, u, 128);
        return;
    }

    p->temp_file->file.fd = NGX_INVALID_FILE;
    p->temp_file->file.log = c->log;
    p->temp_file->path = u->conf->temp_path;
    p->temp_file->pool = r->pool;

    if (p->cacheable) {
        p->temp_file->persistent = 1;
    } else {
        p->temp_file->log_level = NGX_LOG_WARN;
        p->temp_file->warn = "an upstream response is buffered "
                             "to a temporary file";
    }

    p->max_temp_file_size = u->conf->max_temp_file_size;
    p->temp_file_write_size = u->conf->temp_file_write_size;
    p->preread_bufs = ngx_alloc_chain_link(r->pool);
    if (p->preread_bufs == ((void*)0)) {
        ngx_http_upstream_finalize_request(r, u, 128);
        return;
    }

    p->preread_bufs->buf = &u->buffer;
    p->preread_bufs->next = ((void*)0);
    u->buffer.recycled = 1;

    p->preread_size = u->buffer.last - u->buffer.pos;

    if (u->cacheable) {

        p->buf_to_file = ngx_calloc_buf(r->pool);
        if (p->buf_to_file == ((void*)0)) {
            ngx_http_upstream_finalize_request(r, u, 128);
            return;
        }

        p->buf_to_file->start = u->buffer.start;
        p->buf_to_file->pos = u->buffer.start;
        p->buf_to_file->last = u->buffer.pos;
        p->buf_to_file->temporary = 1;
    }

    if (ngx_event_flags & NGX_USE_IOCP_EVENT) {

        p->single_buf = 1;
    }


    p->free_bufs = 1;





    u->buffer.last = u->buffer.pos;

    if (u->conf->cyclic_temp_file) {







        p->cyclic_temp_file = 1;
        c->sendfile = 0;

    } else {
        p->cyclic_temp_file = 0;
    }

    p->read_timeout = u->conf->read_timeout;
    p->send_timeout = clcf->send_timeout;
    p->send_lowat = clcf->send_lowat;

    p->length = -1;

    if (u->input_filter_init
        && u->input_filter_init(p->input_ctx) != NGX_OK)
    {
        ngx_http_upstream_finalize_request(r, u, 128);
        return;
    }

    u->read_event_handler = ngx_http_upstream_process_upstream;
    r->write_event_handler = ngx_http_upstream_process_downstream;

    ngx_http_upstream_process_upstream(r, u);
}

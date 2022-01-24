#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_45__   TYPE_9__ ;
typedef  struct TYPE_44__   TYPE_8__ ;
typedef  struct TYPE_43__   TYPE_6__ ;
typedef  struct TYPE_42__   TYPE_5__ ;
typedef  struct TYPE_41__   TYPE_4__ ;
typedef  struct TYPE_40__   TYPE_3__ ;
typedef  struct TYPE_39__   TYPE_2__ ;
typedef  struct TYPE_38__   TYPE_26__ ;
typedef  struct TYPE_37__   TYPE_25__ ;
typedef  struct TYPE_36__   TYPE_1__ ;
typedef  struct TYPE_35__   TYPE_14__ ;
typedef  struct TYPE_34__   TYPE_13__ ;
typedef  struct TYPE_33__   TYPE_11__ ;
typedef  struct TYPE_32__   TYPE_10__ ;

/* Type definitions */
typedef  int ssize_t ;
typedef  scalar_t__ ngx_uint_t ;
typedef  int /*<<< orphan*/  ngx_syslog_peer_t ;
struct TYPE_43__ {int complete_lengths; int complete_values; TYPE_25__* file; int /*<<< orphan*/ * syslog_peer; TYPE_3__* script; int /*<<< orphan*/ * complex_value; int /*<<< orphan*/ * filter; TYPE_13__* value; TYPE_14__* cf; TYPE_10__* format; scalar_t__ variables; int /*<<< orphan*/ * values; int /*<<< orphan*/ * lengths; TYPE_13__* source; } ;
typedef  TYPE_6__ ngx_stream_script_compile_t ;
typedef  TYPE_6__ ngx_stream_log_t ;
struct TYPE_44__ {int off; int /*<<< orphan*/ * logs; } ;
typedef  TYPE_8__ ngx_stream_log_srv_conf_t ;
typedef  int /*<<< orphan*/  ngx_stream_log_script_t ;
struct TYPE_36__ {scalar_t__ nelts; TYPE_10__* elts; } ;
struct TYPE_45__ {TYPE_1__ formats; } ;
typedef  TYPE_9__ ngx_stream_log_main_conf_t ;
struct TYPE_39__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_32__ {TYPE_2__ name; } ;
typedef  TYPE_10__ ngx_stream_log_fmt_t ;
struct TYPE_33__ {scalar_t__ flush; int gzip; TYPE_4__* event; int /*<<< orphan*/ * start; int /*<<< orphan*/ * last; int /*<<< orphan*/ * pos; } ;
typedef  TYPE_11__ ngx_stream_log_buf_t ;
typedef  int /*<<< orphan*/  ngx_stream_complex_value_t ;
typedef  TYPE_6__ ngx_stream_compile_complex_value_t ;
struct TYPE_34__ {char* data; scalar_t__ len; } ;
typedef  TYPE_13__ ngx_str_t ;
typedef  scalar_t__ ngx_msec_t ;
typedef  int ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_event_t ;
struct TYPE_35__ {TYPE_26__* cycle; int /*<<< orphan*/  pool; TYPE_5__* args; } ;
typedef  TYPE_14__ ngx_conf_t ;
typedef  int /*<<< orphan*/  ngx_command_t ;
struct TYPE_42__ {int nelts; TYPE_13__* elts; } ;
struct TYPE_41__ {int cancelable; int /*<<< orphan*/ * log; int /*<<< orphan*/  handler; TYPE_25__* data; } ;
struct TYPE_40__ {int /*<<< orphan*/  values; int /*<<< orphan*/  lengths; } ;
struct TYPE_38__ {int /*<<< orphan*/  new_log; } ;
struct TYPE_37__ {TYPE_11__* data; int /*<<< orphan*/  flush; } ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 int NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 scalar_t__ NGX_OK ; 
 int Z_BEST_SPEED ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_6__* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (TYPE_26__*,TYPE_13__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_14__*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_25__* FUNC5 (TYPE_26__*,TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (TYPE_13__*) ; 
 scalar_t__ FUNC9 (TYPE_13__*,int /*<<< orphan*/ ) ; 
 void* FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 scalar_t__ FUNC14 (TYPE_6__*) ; 
 TYPE_9__* FUNC15 (TYPE_14__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_stream_log_flush ; 
 int /*<<< orphan*/  ngx_stream_log_flush_handler ; 
 int /*<<< orphan*/  ngx_stream_log_module ; 
 scalar_t__ FUNC16 (TYPE_6__*) ; 
 scalar_t__ FUNC17 (TYPE_13__*) ; 
 scalar_t__ FUNC18 (char*,char*,int) ; 
 char* FUNC19 (TYPE_14__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *
FUNC20(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_stream_log_srv_conf_t *lscf = conf;

    ssize_t                              size;
    ngx_int_t                            gzip;
    ngx_uint_t                           i, n;
    ngx_msec_t                           flush;
    ngx_str_t                           *value, name, s;
    ngx_stream_log_t                    *log;
    ngx_syslog_peer_t                   *peer;
    ngx_stream_log_buf_t                *buffer;
    ngx_stream_log_fmt_t                *fmt;
    ngx_stream_script_compile_t          sc;
    ngx_stream_log_main_conf_t          *lmcf;
    ngx_stream_compile_complex_value_t   ccv;

    value = cf->args->elts;

    if (FUNC13(value[1].data, "off") == 0) {
        lscf->off = 1;
        if (cf->args->nelts == 2) {
            return NGX_CONF_OK;
        }

        FUNC4(NGX_LOG_EMERG, cf, 0,
                           "invalid parameter \"%V\"", &value[2]);
        return NGX_CONF_ERROR;
    }

    if (lscf->logs == NULL) {
        lscf->logs = FUNC0(cf->pool, 2, sizeof(ngx_stream_log_t));
        if (lscf->logs == NULL) {
            return NGX_CONF_ERROR;
        }
    }

    lmcf = FUNC15(cf, ngx_stream_log_module);

    log = FUNC1(lscf->logs);
    if (log == NULL) {
        return NGX_CONF_ERROR;
    }

    FUNC6(log, sizeof(ngx_stream_log_t));


    if (FUNC18(value[1].data, "syslog:", 7) == 0) {

        peer = FUNC10(cf->pool, sizeof(ngx_syslog_peer_t));
        if (peer == NULL) {
            return NGX_CONF_ERROR;
        }

        if (FUNC19(cf, peer) != NGX_CONF_OK) {
            return NGX_CONF_ERROR;
        }

        log->syslog_peer = peer;

        goto process_formats;
    }

    n = FUNC17(&value[1]);

    if (n == 0) {
        log->file = FUNC5(cf->cycle, &value[1]);
        if (log->file == NULL) {
            return NGX_CONF_ERROR;
        }

    } else {
        if (FUNC3(cf->cycle, &value[1], 0) != NGX_OK) {
            return NGX_CONF_ERROR;
        }

        log->script = FUNC10(cf->pool, sizeof(ngx_stream_log_script_t));
        if (log->script == NULL) {
            return NGX_CONF_ERROR;
        }

        FUNC6(&sc, sizeof(ngx_stream_script_compile_t));

        sc.cf = cf;
        sc.source = &value[1];
        sc.lengths = &log->script->lengths;
        sc.values = &log->script->values;
        sc.variables = n;
        sc.complete_lengths = 1;
        sc.complete_values = 1;

        if (FUNC16(&sc) != NGX_OK) {
            return NGX_CONF_ERROR;
        }
    }

process_formats:

    if (cf->args->nelts >= 3) {
        name = value[2];

    } else {
        FUNC4(NGX_LOG_EMERG, cf, 0,
                           "log format is not specified");
        return NGX_CONF_ERROR;
    }

    fmt = lmcf->formats.elts;
    for (i = 0; i < lmcf->formats.nelts; i++) {
        if (fmt[i].name.len == name.len
            && FUNC12(fmt[i].name.data, name.data) == 0)
        {
            log->format = &fmt[i];
            break;
        }
    }

    if (log->format == NULL) {
        FUNC4(NGX_LOG_EMERG, cf, 0,
                           "unknown log format \"%V\"", &name);
        return NGX_CONF_ERROR;
    }

    size = 0;
    flush = 0;
    gzip = 0;

    for (i = 3; i < cf->args->nelts; i++) {

        if (FUNC18(value[i].data, "buffer=", 7) == 0) {
            s.len = value[i].len - 7;
            s.data = value[i].data + 7;

            size = FUNC8(&s);

            if (size == NGX_ERROR || size == 0) {
                FUNC4(NGX_LOG_EMERG, cf, 0,
                                   "invalid buffer size \"%V\"", &s);
                return NGX_CONF_ERROR;
            }

            continue;
        }

        if (FUNC18(value[i].data, "flush=", 6) == 0) {
            s.len = value[i].len - 6;
            s.data = value[i].data + 6;

            flush = FUNC9(&s, 0);

            if (flush == (ngx_msec_t) NGX_ERROR || flush == 0) {
                FUNC4(NGX_LOG_EMERG, cf, 0,
                                   "invalid flush time \"%V\"", &s);
                return NGX_CONF_ERROR;
            }

            continue;
        }

        if (FUNC18(value[i].data, "gzip", 4) == 0
            && (value[i].len == 4 || value[i].data[4] == '='))
        {
#if (NGX_ZLIB)
            if (size == 0) {
                size = 64 * 1024;
            }

            if (value[i].len == 4) {
                gzip = Z_BEST_SPEED;
                continue;
            }

            s.len = value[i].len - 5;
            s.data = value[i].data + 5;

            gzip = ngx_atoi(s.data, s.len);

            if (gzip < 1 || gzip > 9) {
                ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                                   "invalid compression level \"%V\"", &s);
                return NGX_CONF_ERROR;
            }

            continue;

#else
            FUNC4(NGX_LOG_EMERG, cf, 0,
                               "nginx was built without zlib support");
            return NGX_CONF_ERROR;
#endif
        }

        if (FUNC18(value[i].data, "if=", 3) == 0) {
            s.len = value[i].len - 3;
            s.data = value[i].data + 3;

            FUNC6(&ccv, sizeof(ngx_stream_compile_complex_value_t));

            ccv.cf = cf;
            ccv.value = &s;
            ccv.complex_value = FUNC7(cf->pool,
                                           sizeof(ngx_stream_complex_value_t));
            if (ccv.complex_value == NULL) {
                return NGX_CONF_ERROR;
            }

            if (FUNC14(&ccv) != NGX_OK) {
                return NGX_CONF_ERROR;
            }

            log->filter = ccv.complex_value;

            continue;
        }

        FUNC4(NGX_LOG_EMERG, cf, 0,
                           "invalid parameter \"%V\"", &value[i]);
        return NGX_CONF_ERROR;
    }

    if (flush && size == 0) {
        FUNC4(NGX_LOG_EMERG, cf, 0,
                           "no buffer is defined for access_log \"%V\"",
                           &value[1]);
        return NGX_CONF_ERROR;
    }

    if (size) {

        if (log->script) {
            FUNC4(NGX_LOG_EMERG, cf, 0,
                               "buffered logs cannot have variables in name");
            return NGX_CONF_ERROR;
        }

        if (log->syslog_peer) {
            FUNC4(NGX_LOG_EMERG, cf, 0,
                               "logs to syslog cannot be buffered");
            return NGX_CONF_ERROR;
        }

        if (log->file->data) {
            buffer = log->file->data;

            if (buffer->last - buffer->start != size
                || buffer->flush != flush
                || buffer->gzip != gzip)
            {
                FUNC4(NGX_LOG_EMERG, cf, 0,
                                   "access_log \"%V\" already defined "
                                   "with conflicting parameters",
                                   &value[1]);
                return NGX_CONF_ERROR;
            }

            return NGX_CONF_OK;
        }

        buffer = FUNC10(cf->pool, sizeof(ngx_stream_log_buf_t));
        if (buffer == NULL) {
            return NGX_CONF_ERROR;
        }

        buffer->start = FUNC11(cf->pool, size);
        if (buffer->start == NULL) {
            return NGX_CONF_ERROR;
        }

        buffer->pos = buffer->start;
        buffer->last = buffer->start + size;

        if (flush) {
            buffer->event = FUNC10(cf->pool, sizeof(ngx_event_t));
            if (buffer->event == NULL) {
                return NGX_CONF_ERROR;
            }

            buffer->event->data = log->file;
            buffer->event->handler = ngx_stream_log_flush_handler;
            buffer->event->log = &cf->cycle->new_log;
            buffer->event->cancelable = 1;

            buffer->flush = flush;
        }

        buffer->gzip = gzip;

        log->file->flush = ngx_stream_log_flush;
        log->file->data = buffer;
    }

    return NGX_CONF_OK;
}
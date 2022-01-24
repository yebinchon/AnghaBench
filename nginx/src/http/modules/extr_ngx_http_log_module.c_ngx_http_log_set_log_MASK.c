#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_46__   TYPE_9__ ;
typedef  struct TYPE_45__   TYPE_7__ ;
typedef  struct TYPE_44__   TYPE_6__ ;
typedef  struct TYPE_43__   TYPE_5__ ;
typedef  struct TYPE_42__   TYPE_4__ ;
typedef  struct TYPE_41__   TYPE_3__ ;
typedef  struct TYPE_40__   TYPE_2__ ;
typedef  struct TYPE_39__   TYPE_27__ ;
typedef  struct TYPE_38__   TYPE_26__ ;
typedef  struct TYPE_37__   TYPE_1__ ;
typedef  struct TYPE_36__   TYPE_14__ ;
typedef  struct TYPE_35__   TYPE_12__ ;
typedef  struct TYPE_34__   TYPE_11__ ;
typedef  struct TYPE_33__   TYPE_10__ ;

/* Type definitions */
typedef  int ssize_t ;
typedef  scalar_t__ ngx_uint_t ;
typedef  int /*<<< orphan*/  ngx_syslog_peer_t ;
struct TYPE_44__ {char* data; scalar_t__ len; } ;
typedef  TYPE_6__ ngx_str_t ;
typedef  scalar_t__ ngx_msec_t ;
typedef  int ngx_int_t ;
struct TYPE_45__ {int complete_lengths; int complete_values; TYPE_26__* file; int /*<<< orphan*/ * syslog_peer; TYPE_3__* script; int /*<<< orphan*/ * complex_value; int /*<<< orphan*/ * filter; TYPE_6__* value; TYPE_14__* cf; TYPE_11__* format; scalar_t__ variables; int /*<<< orphan*/ * values; int /*<<< orphan*/ * lengths; TYPE_6__* source; } ;
typedef  TYPE_7__ ngx_http_script_compile_t ;
typedef  TYPE_7__ ngx_http_log_t ;
typedef  int /*<<< orphan*/  ngx_http_log_script_t ;
struct TYPE_37__ {scalar_t__ nelts; TYPE_11__* elts; } ;
struct TYPE_46__ {int combined_used; TYPE_1__ formats; } ;
typedef  TYPE_9__ ngx_http_log_main_conf_t ;
struct TYPE_33__ {int off; int /*<<< orphan*/ * logs; } ;
typedef  TYPE_10__ ngx_http_log_loc_conf_t ;
struct TYPE_40__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_34__ {TYPE_2__ name; } ;
typedef  TYPE_11__ ngx_http_log_fmt_t ;
struct TYPE_35__ {scalar_t__ flush; int gzip; TYPE_4__* event; int /*<<< orphan*/ * start; int /*<<< orphan*/ * last; int /*<<< orphan*/ * pos; } ;
typedef  TYPE_12__ ngx_http_log_buf_t ;
typedef  int /*<<< orphan*/  ngx_http_complex_value_t ;
typedef  TYPE_7__ ngx_http_compile_complex_value_t ;
typedef  int /*<<< orphan*/  ngx_event_t ;
struct TYPE_36__ {TYPE_27__* cycle; int /*<<< orphan*/  pool; TYPE_5__* args; } ;
typedef  TYPE_14__ ngx_conf_t ;
typedef  int /*<<< orphan*/  ngx_command_t ;
struct TYPE_43__ {int nelts; TYPE_6__* elts; } ;
struct TYPE_42__ {int cancelable; int /*<<< orphan*/ * log; int /*<<< orphan*/  handler; TYPE_26__* data; } ;
struct TYPE_41__ {int /*<<< orphan*/  values; int /*<<< orphan*/  lengths; } ;
struct TYPE_39__ {int /*<<< orphan*/  new_log; } ;
struct TYPE_38__ {TYPE_12__* data; int /*<<< orphan*/  flush; } ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 int NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 scalar_t__ NGX_OK ; 
 int Z_BEST_SPEED ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_7__* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (TYPE_27__*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_14__*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_26__* FUNC5 (TYPE_27__*,TYPE_6__*) ; 
 scalar_t__ FUNC6 (TYPE_7__*) ; 
 TYPE_9__* FUNC7 (TYPE_14__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_log_flush ; 
 int /*<<< orphan*/  ngx_http_log_flush_handler ; 
 int /*<<< orphan*/  ngx_http_log_module ; 
 scalar_t__ FUNC8 (TYPE_7__*) ; 
 scalar_t__ FUNC9 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*,int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int) ; 
 int FUNC12 (TYPE_6__*) ; 
 scalar_t__ FUNC13 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 void* FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*,char*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC18 (char*,char*) ; 
 scalar_t__ FUNC19 (char*,char*,int) ; 
 char* FUNC20 (TYPE_14__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *
FUNC21(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_log_loc_conf_t *llcf = conf;

    ssize_t                            size;
    ngx_int_t                          gzip;
    ngx_uint_t                         i, n;
    ngx_msec_t                         flush;
    ngx_str_t                         *value, name, s;
    ngx_http_log_t                    *log;
    ngx_syslog_peer_t                 *peer;
    ngx_http_log_buf_t                *buffer;
    ngx_http_log_fmt_t                *fmt;
    ngx_http_log_main_conf_t          *lmcf;
    ngx_http_script_compile_t          sc;
    ngx_http_compile_complex_value_t   ccv;

    value = cf->args->elts;

    if (FUNC18(value[1].data, "off") == 0) {
        llcf->off = 1;
        if (cf->args->nelts == 2) {
            return NGX_CONF_OK;
        }

        FUNC4(NGX_LOG_EMERG, cf, 0,
                           "invalid parameter \"%V\"", &value[2]);
        return NGX_CONF_ERROR;
    }

    if (llcf->logs == NULL) {
        llcf->logs = FUNC0(cf->pool, 2, sizeof(ngx_http_log_t));
        if (llcf->logs == NULL) {
            return NGX_CONF_ERROR;
        }
    }

    lmcf = FUNC7(cf, ngx_http_log_module);

    log = FUNC1(llcf->logs);
    if (log == NULL) {
        return NGX_CONF_ERROR;
    }

    FUNC10(log, sizeof(ngx_http_log_t));


    if (FUNC19(value[1].data, "syslog:", 7) == 0) {

        peer = FUNC14(cf->pool, sizeof(ngx_syslog_peer_t));
        if (peer == NULL) {
            return NGX_CONF_ERROR;
        }

        if (FUNC20(cf, peer) != NGX_CONF_OK) {
            return NGX_CONF_ERROR;
        }

        log->syslog_peer = peer;

        goto process_formats;
    }

    n = FUNC9(&value[1]);

    if (n == 0) {
        log->file = FUNC5(cf->cycle, &value[1]);
        if (log->file == NULL) {
            return NGX_CONF_ERROR;
        }

    } else {
        if (FUNC3(cf->cycle, &value[1], 0) != NGX_OK) {
            return NGX_CONF_ERROR;
        }

        log->script = FUNC14(cf->pool, sizeof(ngx_http_log_script_t));
        if (log->script == NULL) {
            return NGX_CONF_ERROR;
        }

        FUNC10(&sc, sizeof(ngx_http_script_compile_t));

        sc.cf = cf;
        sc.source = &value[1];
        sc.lengths = &log->script->lengths;
        sc.values = &log->script->values;
        sc.variables = n;
        sc.complete_lengths = 1;
        sc.complete_values = 1;

        if (FUNC8(&sc) != NGX_OK) {
            return NGX_CONF_ERROR;
        }
    }

process_formats:

    if (cf->args->nelts >= 3) {
        name = value[2];

        if (FUNC18(name.data, "combined") == 0) {
            lmcf->combined_used = 1;
        }

    } else {
        FUNC16(&name, "combined");
        lmcf->combined_used = 1;
    }

    fmt = lmcf->formats.elts;
    for (i = 0; i < lmcf->formats.nelts; i++) {
        if (fmt[i].name.len == name.len
            && FUNC17(fmt[i].name.data, name.data) == 0)
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

        if (FUNC19(value[i].data, "buffer=", 7) == 0) {
            s.len = value[i].len - 7;
            s.data = value[i].data + 7;

            size = FUNC12(&s);

            if (size == NGX_ERROR || size == 0) {
                FUNC4(NGX_LOG_EMERG, cf, 0,
                                   "invalid buffer size \"%V\"", &s);
                return NGX_CONF_ERROR;
            }

            continue;
        }

        if (FUNC19(value[i].data, "flush=", 6) == 0) {
            s.len = value[i].len - 6;
            s.data = value[i].data + 6;

            flush = FUNC13(&s, 0);

            if (flush == (ngx_msec_t) NGX_ERROR || flush == 0) {
                FUNC4(NGX_LOG_EMERG, cf, 0,
                                   "invalid flush time \"%V\"", &s);
                return NGX_CONF_ERROR;
            }

            continue;
        }

        if (FUNC19(value[i].data, "gzip", 4) == 0
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

        if (FUNC19(value[i].data, "if=", 3) == 0) {
            s.len = value[i].len - 3;
            s.data = value[i].data + 3;

            FUNC10(&ccv, sizeof(ngx_http_compile_complex_value_t));

            ccv.cf = cf;
            ccv.value = &s;
            ccv.complex_value = FUNC11(cf->pool,
                                           sizeof(ngx_http_complex_value_t));
            if (ccv.complex_value == NULL) {
                return NGX_CONF_ERROR;
            }

            if (FUNC6(&ccv) != NGX_OK) {
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

        buffer = FUNC14(cf->pool, sizeof(ngx_http_log_buf_t));
        if (buffer == NULL) {
            return NGX_CONF_ERROR;
        }

        buffer->start = FUNC15(cf->pool, size);
        if (buffer->start == NULL) {
            return NGX_CONF_ERROR;
        }

        buffer->pos = buffer->start;
        buffer->last = buffer->start + size;

        if (flush) {
            buffer->event = FUNC14(cf->pool, sizeof(ngx_event_t));
            if (buffer->event == NULL) {
                return NGX_CONF_ERROR;
            }

            buffer->event->data = log->file;
            buffer->event->handler = ngx_http_log_flush_handler;
            buffer->event->log = &cf->cycle->new_log;
            buffer->event->cancelable = 1;

            buffer->flush = flush;
        }

        buffer->gzip = gzip;

        log->file->flush = ngx_http_log_flush;
        log->file->data = buffer;
    }

    return NGX_CONF_OK;
}
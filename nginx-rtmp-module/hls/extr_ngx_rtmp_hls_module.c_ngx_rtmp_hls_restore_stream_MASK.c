#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  char uint64_t ;
typedef  char u_char ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ off_t ;
struct TYPE_17__ {TYPE_2__* connection; } ;
typedef  TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_18__ {scalar_t__ fd; double duration; int discont; int active; char id; char key_id; int /*<<< orphan*/  name; int /*<<< orphan*/  log; } ;
typedef  TYPE_4__ ngx_rtmp_hls_frag_t ;
struct TYPE_15__ {int /*<<< orphan*/  data; } ;
struct TYPE_19__ {char frag; scalar_t__ nfrags; TYPE_1__ playlist; } ;
typedef  TYPE_5__ ngx_rtmp_hls_ctx_t ;
typedef  int ngx_int_t ;
typedef  TYPE_4__ ngx_file_t ;
typedef  int /*<<< orphan*/  file ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_16__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_FILE_OPEN ; 
 int /*<<< orphan*/  NGX_FILE_RDONLY ; 
 scalar_t__ NGX_INVALID_FILE ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_RTMP ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 int /*<<< orphan*/  NGX_RTMP_DISCONT ; 
 size_t NGX_RTMP_DISCONT_LEN ; 
 int /*<<< orphan*/  NGX_RTMP_EXTINF ; 
 size_t NGX_RTMP_EXTINF_LEN ; 
 int /*<<< orphan*/  NGX_RTMP_MSEQ ; 
 size_t NGX_RTMP_MSEQ_LEN ; 
 int /*<<< orphan*/  NGX_RTMP_XKEY ; 
 size_t NGX_RTMP_XKEY_LEN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,double) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t,char*,char,double,double,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_4__*,char*,int,scalar_t__) ; 
 TYPE_5__* FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC10 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  ngx_rtmp_hls_module ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC13 (char*,char*,char) ; 
 double FUNC14 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC15(ngx_rtmp_session_t *s)
{
    ngx_rtmp_hls_ctx_t             *ctx;
    ngx_file_t                      file;
    ssize_t                         ret;
    off_t                           offset;
    u_char                         *p, *last, *end, *next, *pa, *pp, c;
    ngx_rtmp_hls_frag_t            *f;
    double                          duration;
    ngx_int_t                       discont;
    uint64_t                        mag, key_id, base;
    static u_char                   buffer[4096];

    ctx = FUNC9(s, ngx_rtmp_hls_module);

    FUNC6(&file, sizeof(file));

    file.log = s->connection->log;

    FUNC12(&file.name, "m3u8");

    file.fd = FUNC7(ctx->playlist.data, NGX_FILE_RDONLY, NGX_FILE_OPEN,
                            0);
    if (file.fd == NGX_INVALID_FILE) {
        return;
    }

    offset = 0;
    ctx->nfrags = 0;
    f = NULL;
    duration = 0;
    discont = 0;
    key_id = 0;

    for ( ;; ) {

        ret = FUNC8(&file, buffer, sizeof(buffer), offset);
        if (ret <= 0) {
            goto done;
        }

        p = buffer;
        end = buffer + ret;

        for ( ;; ) {
            last = FUNC13(p, end, '\n');

            if (last == NULL) {
                if (p == buffer) {
                    goto done;
                }
                break;
            }

            next = last + 1;
            offset += (next - p);

            if (p != last && last[-1] == '\r') {
                last--;
            }


#define NGX_RTMP_MSEQ           "#EXT-X-MEDIA-SEQUENCE:"
#define NGX_RTMP_MSEQ_LEN       (sizeof(NGX_RTMP_MSEQ) - 1)


            if (FUNC5(p, NGX_RTMP_MSEQ, NGX_RTMP_MSEQ_LEN) == 0) {

                ctx->frag = (uint64_t) FUNC14((const char *)
                                              &p[NGX_RTMP_MSEQ_LEN], NULL);

                FUNC2(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                               "hls: restore sequence frag=%uL", ctx->frag);
            }


#define NGX_RTMP_XKEY           "#EXT-X-KEY:"
#define NGX_RTMP_XKEY_LEN       (sizeof(NGX_RTMP_XKEY) - 1)

            if (FUNC5(p, NGX_RTMP_XKEY, NGX_RTMP_XKEY_LEN) == 0) {

                /* recover key id from initialization vector */

                key_id = 0;
                base = 1;
                pp = last - 1;

                for ( ;; ) {
                    if (pp < p) {
                        FUNC4(NGX_LOG_ERR, s->connection->log, 0,
                                "hls: failed to read key id");
                        break;
                    }

                    c = *pp;
                    if (c == 'x') {
                        break;
                    }

                    if (c >= '0' && c <= '9') {
                        c -= '0';
                        goto next;
                    }

                    c |= 0x20;

                    if (c >= 'a' && c <= 'f') {
                        c -= 'a' - 10;
                        goto next;
                    }

                    FUNC4(NGX_LOG_ERR, s->connection->log, 0,
                                  "hls: bad character in key id");
                    break;

                next:

                    key_id += base * c;
                    base *= 0x10;
                    pp--;
                }
            }


#define NGX_RTMP_EXTINF         "#EXTINF:"
#define NGX_RTMP_EXTINF_LEN     (sizeof(NGX_RTMP_EXTINF) - 1)


            if (FUNC5(p, NGX_RTMP_EXTINF, NGX_RTMP_EXTINF_LEN) == 0) {

                duration = FUNC14((const char *) &p[NGX_RTMP_EXTINF_LEN], NULL);

                FUNC2(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                               "hls: restore durarion=%.3f", duration);
            }


#define NGX_RTMP_DISCONT        "#EXT-X-DISCONTINUITY"
#define NGX_RTMP_DISCONT_LEN    (sizeof(NGX_RTMP_DISCONT) - 1)


            if (FUNC5(p, NGX_RTMP_DISCONT, NGX_RTMP_DISCONT_LEN) == 0) {

                discont = 1;

                FUNC1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                               "hls: discontinuity");
            }

            /* find '.ts\r' */

            if (p + 4 <= last &&
                last[-3] == '.' && last[-2] == 't' && last[-1] == 's')
            {
                f = FUNC10(s, ctx->nfrags);

                FUNC6(f, sizeof(*f));

                f->duration = duration;
                f->discont = discont;
                f->active = 1;
                f->id = 0;

                discont = 0;

                mag = 1;
                for (pa = last - 4; pa >= p; pa--) {
                    if (*pa < '0' || *pa > '9') {
                        break;
                    }
                    f->id += (*pa - '0') * mag;
                    mag *= 10;
                }

                f->key_id = key_id;

                FUNC11(s);

                FUNC3(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                               "hls: restore fragment '%*s' id=%uL, "
                               "duration=%.3f, frag=%uL, nfrags=%ui",
                               (size_t) (last - p), p, f->id, f->duration,
                               ctx->frag, ctx->nfrags);
            }

            p = next;
        }
    }

done:
    FUNC0(file.fd);
}
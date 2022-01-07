
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef char uint64_t ;
typedef char u_char ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ off_t ;
struct TYPE_17__ {TYPE_2__* connection; } ;
typedef TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_18__ {scalar_t__ fd; double duration; int discont; int active; char id; char key_id; int name; int log; } ;
typedef TYPE_4__ ngx_rtmp_hls_frag_t ;
struct TYPE_15__ {int data; } ;
struct TYPE_19__ {char frag; scalar_t__ nfrags; TYPE_1__ playlist; } ;
typedef TYPE_5__ ngx_rtmp_hls_ctx_t ;
typedef int ngx_int_t ;
typedef TYPE_4__ ngx_file_t ;
typedef int file ;
typedef int buffer ;
struct TYPE_16__ {int log; } ;


 int NGX_FILE_OPEN ;
 int NGX_FILE_RDONLY ;
 scalar_t__ NGX_INVALID_FILE ;
 int NGX_LOG_DEBUG_RTMP ;
 int NGX_LOG_ERR ;
 int NGX_RTMP_DISCONT ;
 size_t NGX_RTMP_DISCONT_LEN ;
 int NGX_RTMP_EXTINF ;
 size_t NGX_RTMP_EXTINF_LEN ;
 int NGX_RTMP_MSEQ ;
 size_t NGX_RTMP_MSEQ_LEN ;
 int NGX_RTMP_XKEY ;
 size_t NGX_RTMP_XKEY_LEN ;
 int ngx_close_file (scalar_t__) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,double) ;
 int ngx_log_debug6 (int ,int ,int ,char*,size_t,char*,char,double,double,scalar_t__) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 scalar_t__ ngx_memcmp (char*,int ,size_t) ;
 int ngx_memzero (TYPE_4__*,int) ;
 scalar_t__ ngx_open_file (int ,int ,int ,int ) ;
 scalar_t__ ngx_read_file (TYPE_4__*,char*,int,scalar_t__) ;
 TYPE_5__* ngx_rtmp_get_module_ctx (TYPE_3__*,int ) ;
 TYPE_4__* ngx_rtmp_hls_get_frag (TYPE_3__*,scalar_t__) ;
 int ngx_rtmp_hls_module ;
 int ngx_rtmp_hls_next_frag (TYPE_3__*) ;
 int ngx_str_set (int *,char*) ;
 char* ngx_strlchr (char*,char*,char) ;
 double strtod (char const*,int *) ;

__attribute__((used)) static void
ngx_rtmp_hls_restore_stream(ngx_rtmp_session_t *s)
{
    ngx_rtmp_hls_ctx_t *ctx;
    ngx_file_t file;
    ssize_t ret;
    off_t offset;
    u_char *p, *last, *end, *next, *pa, *pp, c;
    ngx_rtmp_hls_frag_t *f;
    double duration;
    ngx_int_t discont;
    uint64_t mag, key_id, base;
    static u_char buffer[4096];

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_hls_module);

    ngx_memzero(&file, sizeof(file));

    file.log = s->connection->log;

    ngx_str_set(&file.name, "m3u8");

    file.fd = ngx_open_file(ctx->playlist.data, NGX_FILE_RDONLY, NGX_FILE_OPEN,
                            0);
    if (file.fd == NGX_INVALID_FILE) {
        return;
    }

    offset = 0;
    ctx->nfrags = 0;
    f = ((void*)0);
    duration = 0;
    discont = 0;
    key_id = 0;

    for ( ;; ) {

        ret = ngx_read_file(&file, buffer, sizeof(buffer), offset);
        if (ret <= 0) {
            goto done;
        }

        p = buffer;
        end = buffer + ret;

        for ( ;; ) {
            last = ngx_strlchr(p, end, '\n');

            if (last == ((void*)0)) {
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






            if (ngx_memcmp(p, "#EXT-X-MEDIA-SEQUENCE:", (sizeof("#EXT-X-MEDIA-SEQUENCE:") - 1)) == 0) {

                ctx->frag = (uint64_t) strtod((const char *)
                                              &p[(sizeof("#EXT-X-MEDIA-SEQUENCE:") - 1)], ((void*)0));

                ngx_log_debug1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                               "hls: restore sequence frag=%uL", ctx->frag);
            }





            if (ngx_memcmp(p, "#EXT-X-KEY:", (sizeof("#EXT-X-KEY:") - 1)) == 0) {



                key_id = 0;
                base = 1;
                pp = last - 1;

                for ( ;; ) {
                    if (pp < p) {
                        ngx_log_error(NGX_LOG_ERR, s->connection->log, 0,
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

                    ngx_log_error(NGX_LOG_ERR, s->connection->log, 0,
                                  "hls: bad character in key id");
                    break;

                next:

                    key_id += base * c;
                    base *= 0x10;
                    pp--;
                }
            }






            if (ngx_memcmp(p, "#EXTINF:", (sizeof("#EXTINF:") - 1)) == 0) {

                duration = strtod((const char *) &p[(sizeof("#EXTINF:") - 1)], ((void*)0));

                ngx_log_debug1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                               "hls: restore durarion=%.3f", duration);
            }






            if (ngx_memcmp(p, "#EXT-X-DISCONTINUITY", (sizeof("#EXT-X-DISCONTINUITY") - 1)) == 0) {

                discont = 1;

                ngx_log_debug0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                               "hls: discontinuity");
            }



            if (p + 4 <= last &&
                last[-3] == '.' && last[-2] == 't' && last[-1] == 's')
            {
                f = ngx_rtmp_hls_get_frag(s, ctx->nfrags);

                ngx_memzero(f, sizeof(*f));

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

                ngx_rtmp_hls_next_frag(s);

                ngx_log_debug6(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                               "hls: restore fragment '%*s' id=%uL, "
                               "duration=%.3f, frag=%uL, nfrags=%ui",
                               (size_t) (last - p), p, f->id, f->duration,
                               ctx->frag, ctx->nfrags);
            }

            p = next;
        }
    }

done:
    ngx_close_file(file.fd);
}

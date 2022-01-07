
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct priv {int broken_seek; scalar_t__ entry_size; TYPE_3__* mpa; } ;
struct TYPE_9__ {scalar_t__ pos; int cancel; struct priv* priv; } ;
typedef TYPE_1__ stream_t ;
typedef int locale_t ;
typedef scalar_t__ int64_t ;
typedef int buffer ;
struct TYPE_10__ {int arch; int locale; } ;


 int MPMIN (scalar_t__,int) ;
 int MP_ERR (TYPE_1__*,char*,...) ;
 int MP_VERBOSE (TYPE_1__*,char*) ;
 int MP_WARN (TYPE_1__*,char*) ;
 int SEEK_SET ;
 scalar_t__ STREAM_OK ;
 int archive_error_string (int ) ;
 int archive_read_data (int ,char*,int) ;
 int archive_seek_data (int ,scalar_t__,int ) ;
 scalar_t__ mp_archive_check_fatal (TYPE_3__*,int) ;
 int mp_archive_free (TYPE_3__*) ;
 scalar_t__ mp_cancel_test (int ) ;
 scalar_t__ reopen_archive (TYPE_1__*) ;
 int uselocale (int ) ;

__attribute__((used)) static int archive_entry_seek(stream_t *s, int64_t newpos)
{
    struct priv *p = s->priv;
    if (p->mpa && !p->broken_seek) {
        locale_t oldlocale = uselocale(p->mpa->locale);
        int r = archive_seek_data(p->mpa->arch, newpos, SEEK_SET);
        uselocale(oldlocale);
        if (r >= 0)
            return 1;
        MP_WARN(s, "possibly unsupported seeking - switching to reopening\n");
        p->broken_seek = 1;
        if (reopen_archive(s) < STREAM_OK)
            return -1;
    }

    if (newpos < s->pos) {


        MP_VERBOSE(s, "trying to reopen archive for performing seek\n");
        if (reopen_archive(s) < STREAM_OK)
            return -1;
    }
    if (newpos > s->pos) {
        if (!p->mpa && reopen_archive(s) < STREAM_OK)
            return -1;


        char buffer[4096];
        while (newpos > s->pos) {
            if (mp_cancel_test(s->cancel))
                return -1;

            int size = MPMIN(newpos - s->pos, sizeof(buffer));
            locale_t oldlocale = uselocale(p->mpa->locale);
            int r = archive_read_data(p->mpa->arch, buffer, size);
            if (r <= 0) {
                if (r == 0 && newpos > p->entry_size) {
                    MP_ERR(s, "demuxer trying to seek beyond end of archive "
                           "entry\n");
                } else if (r == 0) {
                    MP_ERR(s, "end of archive entry reached while seeking\n");
                } else {
                    MP_ERR(s, "%s\n", archive_error_string(p->mpa->arch));
                }
                uselocale(oldlocale);
                if (mp_archive_check_fatal(p->mpa, r)) {
                    mp_archive_free(p->mpa);
                    p->mpa = ((void*)0);
                }
                return -1;
            }
            uselocale(oldlocale);
            s->pos += r;
        }
    }
    return 1;
}

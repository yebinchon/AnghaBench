
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct priv {int entry_size; int entry_name; struct mp_archive* mpa; int src; } ;
struct mp_archive {int entry; int locale; int entry_filename; } ;
struct TYPE_4__ {int log; scalar_t__ pos; struct priv* priv; } ;
typedef TYPE_1__ stream_t ;
typedef int locale_t ;


 int MP_ARCHIVE_FLAG_UNSAFE ;
 int MP_ERR (TYPE_1__*,char*,int ) ;
 int STREAM_ERROR ;
 int STREAM_OK ;
 int archive_entry_size (int ) ;
 scalar_t__ archive_entry_size_is_set (int ) ;
 int mp_archive_free (struct mp_archive*) ;
 struct mp_archive* mp_archive_new (int ,int ,int ) ;
 scalar_t__ mp_archive_next_entry (struct mp_archive*) ;
 scalar_t__ strcmp (int ,int ) ;
 int uselocale (int ) ;

__attribute__((used)) static int reopen_archive(stream_t *s)
{
    struct priv *p = s->priv;
    mp_archive_free(p->mpa);
    s->pos = 0;
    p->mpa = mp_archive_new(s->log, p->src, MP_ARCHIVE_FLAG_UNSAFE);
    if (!p->mpa)
        return STREAM_ERROR;


    struct mp_archive *mpa = p->mpa;
    while (mp_archive_next_entry(mpa)) {
        if (strcmp(p->entry_name, mpa->entry_filename) == 0) {
            locale_t oldlocale = uselocale(mpa->locale);
            p->entry_size = -1;
            if (archive_entry_size_is_set(mpa->entry))
                p->entry_size = archive_entry_size(mpa->entry);
            uselocale(oldlocale);
            return STREAM_OK;
        }
    }

    mp_archive_free(p->mpa);
    p->mpa = ((void*)0);
    MP_ERR(s, "archive entry not found. '%s'\n", p->entry_name);
    return STREAM_ERROR;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct priv {TYPE_2__* mpa; } ;
struct TYPE_6__ {struct priv* priv; } ;
typedef TYPE_1__ stream_t ;
typedef int locale_t ;
struct TYPE_7__ {int arch; int locale; } ;


 int MP_ERR (TYPE_1__*,char*,int ) ;
 int archive_error_string (int ) ;
 int archive_read_data (int ,void*,int) ;
 scalar_t__ mp_archive_check_fatal (TYPE_2__*,int) ;
 int mp_archive_free (TYPE_2__*) ;
 int uselocale (int ) ;

__attribute__((used)) static int archive_entry_fill_buffer(stream_t *s, void *buffer, int max_len)
{
    struct priv *p = s->priv;
    if (!p->mpa)
        return 0;
    locale_t oldlocale = uselocale(p->mpa->locale);
    int r = archive_read_data(p->mpa->arch, buffer, max_len);
    if (r < 0) {
        MP_ERR(s, "%s\n", archive_error_string(p->mpa->arch));
        if (mp_archive_check_fatal(p->mpa, r)) {
            mp_archive_free(p->mpa);
            p->mpa = ((void*)0);
        }
    }
    uselocale(oldlocale);
    return r;
}

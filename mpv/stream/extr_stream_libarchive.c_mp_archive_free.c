
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_archive {scalar_t__ locale; } ;


 int freelocale (scalar_t__) ;
 int mp_archive_close (struct mp_archive*) ;
 int talloc_free (struct mp_archive*) ;

void mp_archive_free(struct mp_archive *mpa)
{
    mp_archive_close(mpa);
    if (mpa && mpa->locale)
        freelocale(mpa->locale);
    talloc_free(mpa);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int MP_FATAL (struct mp_archive*,char*) ;
 int mp_archive_close (struct mp_archive*) ;

__attribute__((used)) static bool mp_archive_check_fatal(struct mp_archive *mpa, int r)
{
    if (r > ARCHIVE_FATAL)
        return 0;
    MP_FATAL(mpa, "fatal error received - closing archive\n");
    mp_archive_close(mpa);
    return 1;
}

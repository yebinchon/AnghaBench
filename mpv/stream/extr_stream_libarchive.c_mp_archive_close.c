
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_archive {int * arch; } ;


 int archive_read_close (int *) ;
 int archive_read_free (int *) ;

__attribute__((used)) static void mp_archive_close(struct mp_archive *mpa)
{
    if (mpa && mpa->arch) {
        archive_read_close(mpa->arch);
        archive_read_free(mpa->arch);
        mpa->arch = ((void*)0);
    }
}

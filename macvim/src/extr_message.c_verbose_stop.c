
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int fclose (int *) ;
 int verbose_did_open ;
 int * verbose_fd ;

void
verbose_stop()
{
    if (verbose_fd != ((void*)0))
    {
 fclose(verbose_fd);
 verbose_fd = ((void*)0);
    }
    verbose_did_open = FALSE;
}

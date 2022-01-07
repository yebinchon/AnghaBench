
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mpv_free (char*) ;

__attribute__((used)) static void destruct_af_mpv_alloc(void *p)
{
    mpv_free(*(char**)p);
}

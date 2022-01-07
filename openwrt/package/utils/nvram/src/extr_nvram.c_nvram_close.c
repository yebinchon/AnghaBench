
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fd; int length; int mmap; } ;
typedef TYPE_1__ nvram_handle_t ;


 int _nvram_free (TYPE_1__*) ;
 int close (int ) ;
 int free (TYPE_1__*) ;
 int munmap (int ,int ) ;

int nvram_close(nvram_handle_t *h)
{
 _nvram_free(h);
 munmap(h->mmap, h->length);
 close(h->fd);
 free(h);

 return 0;
}

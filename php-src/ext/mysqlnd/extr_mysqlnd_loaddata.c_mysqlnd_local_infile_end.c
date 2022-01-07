
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * fd; } ;
typedef TYPE_1__ MYSQLND_INFILE_INFO ;


 int mnd_efree (TYPE_1__*) ;
 int php_stream_close (int *) ;

__attribute__((used)) static
void mysqlnd_local_infile_end(void * ptr)
{
 MYSQLND_INFILE_INFO *info = (MYSQLND_INFILE_INFO *)ptr;

 if (info) {

  if (info->fd) {
   php_stream_close(info->fd);
   info->fd = ((void*)0);
  }
  mnd_efree(info);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fd; struct TYPE_4__* prev; scalar_t__ line_num; } ;
typedef TYPE_1__ BufferedFile ;


 int close (scalar_t__) ;
 TYPE_1__* file ;
 int free (TYPE_1__*) ;
 int total_lines ;

void tcc_close(void)
{
 BufferedFile *bf = file;
 if (bf->fd > 0) {
  close (bf->fd);
  total_lines += bf->line_num;
 }
 file = bf->prev;
 free (bf);
}

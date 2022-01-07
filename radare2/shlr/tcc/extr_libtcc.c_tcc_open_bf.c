
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int line_num; int fd; struct TYPE_7__* prev; int ifdef_stack_ptr; scalar_t__ ifndef_macro; int filename; int * buf_end; int * buffer; int * buf_ptr; } ;
struct TYPE_6__ {int ifdef_stack_ptr; } ;
typedef TYPE_1__ TCCState ;
typedef TYPE_2__ BufferedFile ;


 int CH_EOB ;
 int IO_BUF_SIZE ;
 TYPE_2__* file ;
 TYPE_2__* malloc (int) ;
 int normalize_slashes (int ) ;
 int pstrcpy (int ,int,char const*) ;

void tcc_open_bf(TCCState *s1, const char *filename, int initlen)
{
 BufferedFile *bf;
 int buflen = initlen? initlen: IO_BUF_SIZE;

 bf = malloc (sizeof(BufferedFile) + buflen);
 bf->buf_ptr = bf->buffer;
 bf->buf_end = bf->buffer + initlen;
 bf->buf_end[0] = CH_EOB;
 pstrcpy (bf->filename, sizeof(bf->filename), filename);



 bf->line_num = 1;
 bf->ifndef_macro = 0;
 bf->ifdef_stack_ptr = s1->ifdef_stack_ptr;
 bf->fd = -1;
 bf->prev = file;
 file = bf;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int end; int page_size; int pos; } ;
typedef TYPE_1__ R_STREAM_FILE ;


 int GET_PAGE (int,int,int ,int ) ;

void stream_file_get_size(R_STREAM_FILE *stream_file, int *data_size) {
 int pn_start = 0, off_start = 0;
 GET_PAGE(pn_start, off_start, stream_file->pos, stream_file->page_size);
 (void)pn_start;
 *data_size = stream_file->end - off_start;
}

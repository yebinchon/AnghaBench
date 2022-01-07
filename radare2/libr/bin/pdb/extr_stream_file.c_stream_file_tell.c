
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pos; } ;
typedef TYPE_1__ R_STREAM_FILE ;



int stream_file_tell(R_STREAM_FILE *stream_file) {
 return stream_file->pos;
}

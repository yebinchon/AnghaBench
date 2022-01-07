
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int R_STREAM_FILE ;


 int stream_file_read (int *,int,char*) ;
 int stream_file_seek (int *,int,int ) ;
 int stream_file_tell (int *) ;

void stream_file_get_data(R_STREAM_FILE *stream_file, char *data) {
 int pos = stream_file_tell (stream_file);
 stream_file_seek (stream_file, 0, 0);
 stream_file_read (stream_file, -1, data);
 stream_file_seek (stream_file, pos, 0);
}

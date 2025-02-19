
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fpo_data_list; } ;
typedef char SFPO_DATA ;
typedef TYPE_1__ SFPOStream ;
typedef int R_STREAM_FILE ;


 int free (char*) ;
 scalar_t__ malloc (int) ;
 int parse_fpo_data (char*,int,int*,char*) ;
 int r_list_append (int ,char*) ;
 int r_list_new () ;
 int stream_file_get_data (int *,char*) ;
 int stream_file_get_size (int *,int*) ;

void parse_fpo_stream(void *stream, R_STREAM_FILE *stream_file)
{
 int data_size;
 char *data = 0, *ptmp = 0;
 int curr_read_bytes = 0, read_bytes = 0;
 SFPO_DATA *fpo_data = 0;
 SFPOStream *fpo_stream = 0;

 stream_file_get_size(stream_file, &data_size);
 data = (char *) malloc(data_size);
 stream_file_get_data(stream_file, data);

 fpo_stream = (SFPOStream *) stream;
 fpo_stream->fpo_data_list = r_list_new ();
 ptmp = data;
 while (read_bytes < data_size) {
  fpo_data = (SFPO_DATA *) malloc(sizeof(SFPO_DATA));
  curr_read_bytes = parse_fpo_data(ptmp, data_size, &read_bytes, fpo_data);
  ptmp += curr_read_bytes;

  if (!curr_read_bytes) {
   free(fpo_data);
   break;
  }

  r_list_append (fpo_stream->fpo_data_list, fpo_data);
 }

 free(data);
}

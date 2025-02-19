
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int omap_entries; scalar_t__ froms; } ;
typedef TYPE_1__ SOmapStream ;
typedef char SOmapEntry ;
typedef int R_STREAM_FILE ;


 int free (char*) ;
 scalar_t__ malloc (int) ;
 int parse_omap_entry (char*,int,int*,char*) ;
 int r_list_append (int ,char*) ;
 int r_list_new () ;
 int stream_file_get_data (int *,char*) ;
 int stream_file_get_size (int *,int*) ;

void parse_omap_stream(void *stream, R_STREAM_FILE *stream_file) {
 int data_size;
 char *data = ((void*)0), *ptmp = ((void*)0);
 int curr_read_bytes = 0, read_bytes = 0;
 SOmapEntry *omap_entry = 0;
 SOmapStream *omap_stream = 0;

 stream_file_get_size (stream_file, &data_size);
 data = (char *) malloc (data_size);
 if (!data) {
  return;
 }
 stream_file_get_data (stream_file, data);

 omap_stream = (SOmapStream *) stream;
 omap_stream->froms = 0;
 omap_stream->omap_entries = r_list_new ();
 ptmp = data;
 while (read_bytes < data_size) {
  omap_entry = (SOmapEntry *) malloc (sizeof(SOmapEntry));
  if (!omap_entry) {
   break;
  }
  curr_read_bytes = parse_omap_entry (ptmp, data_size, &read_bytes, omap_entry);
  if (!curr_read_bytes) {
   free (omap_entry);
   break;
  }
  ptmp += curr_read_bytes;
  r_list_append (omap_stream->omap_entries, omap_entry);
 }

 free (data);
}

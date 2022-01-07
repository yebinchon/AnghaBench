
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sections_hdrs; } ;
typedef TYPE_1__ SPEStream ;
typedef int SIMAGE_SECTION_HEADER ;
typedef int R_STREAM_FILE ;


 int free (char*) ;
 scalar_t__ malloc (int) ;
 int memcpy (int *,char*,int) ;
 int r_list_append (int ,int *) ;
 int r_list_new () ;
 int stream_file_get_data (int *,char*) ;
 int stream_file_get_size (int *,int*) ;

void parse_pe_stream(void *stream, R_STREAM_FILE *stream_file)
{
 int data_size = 0;
 char *data = 0, *ptmp = 0;
 int read_bytes = 0;
 SIMAGE_SECTION_HEADER *sctn_header = 0;
 SPEStream *pe_stream = (SPEStream *) stream;
 int sctn_header_size =0;

 stream_file_get_size (stream_file, &data_size);
 data = (char *) malloc (data_size);
 if (!data) {
  return;
 }
 stream_file_get_data (stream_file, data);

 sctn_header_size = sizeof (SIMAGE_SECTION_HEADER);
 ptmp = data;
 pe_stream->sections_hdrs = r_list_new ();
 while (read_bytes < data_size) {
  sctn_header = (SIMAGE_SECTION_HEADER *) malloc (sctn_header_size);
  if (!sctn_header) {
   break;
  }
  memcpy (sctn_header, ptmp, sctn_header_size);
  ptmp += sctn_header_size;
  r_list_append (pe_stream->sections_hdrs, sctn_header);
  read_bytes += sctn_header_size;
 }

 free (data);
}

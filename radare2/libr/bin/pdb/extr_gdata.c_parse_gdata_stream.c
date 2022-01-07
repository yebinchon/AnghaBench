
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int globals_list; } ;
struct TYPE_5__ {unsigned short leaf_type; } ;
typedef TYPE_1__ SGlobal ;
typedef TYPE_2__ SGDATAStream ;
typedef int R_STREAM_FILE ;


 int free (char*) ;
 scalar_t__ malloc (int) ;
 int parse_global (char*,unsigned short,TYPE_1__*) ;
 int r_list_append (int ,TYPE_1__*) ;
 int r_list_new () ;
 int stream_file_read (int *,unsigned short,char*) ;

void parse_gdata_stream(void *stream, R_STREAM_FILE *stream_file) {
 unsigned short len = 0;
 unsigned short leaf_type = 0;
 char *data = 0;
 SGDATAStream *data_stream = (SGDATAStream *) stream;
 SGlobal *global = 0;

 data_stream->globals_list = r_list_new ();
 while (1) {
  stream_file_read (stream_file, 2, (char *)&len);
  if (len == 0) {
   break;
  }
  data = (char *) malloc (len);
  if (!data) {
   return;
  }
  stream_file_read (stream_file, len, data);

  leaf_type = *(unsigned short *) (data);
  if ((leaf_type == 0x110E) || (leaf_type == 0x1009)) {
   global = (SGlobal *) malloc(sizeof(SGlobal));
   if (!global) {
    free (data);
    return;
   }
   global->leaf_type = leaf_type;
   parse_global (data + 2, len, global);
   r_list_append (data_stream->globals_list, global);
  }
  free (data);
 }
}

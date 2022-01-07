
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int module_size; int seccon_size; int secmap_size; int filinf_size; int tsmap_size; int ecinfo_size; } ;
struct TYPE_3__ {int dbg_header; TYPE_2__ dbi_header; int dbiexhdrs; } ;
typedef TYPE_1__ SDbiStream ;
typedef int SDBIHeader ;
typedef int SDBIExHeader ;
typedef int R_STREAM_FILE ;


 int PDB_ALIGN ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int parse_dbg_header (int *,int *) ;
 int parse_dbi_ex_header (char*,int,int *) ;
 int parse_dbi_header (TYPE_2__*,int *) ;
 int r_list_append (int ,int *) ;
 int r_list_new () ;
 int stream_file_read (int *,int,char*) ;
 int stream_file_seek (int *,int,int) ;

void parse_dbi_stream(void *parsed_pdb_stream, R_STREAM_FILE *stream_file) {
 SDbiStream *dbi_stream = (SDbiStream *) parsed_pdb_stream;
 SDBIExHeader *dbi_ex_header = 0;
 int pos = 0;
 char *dbiexhdr_data = 0, *p_tmp = 0;
 int size = 0, sz = 0;
 int i = 0;

 parse_dbi_header (&dbi_stream->dbi_header, stream_file);
 pos += sizeof (SDBIHeader) - 2;

 stream_file_seek (stream_file, pos, 0);

 size = dbi_stream->dbi_header.module_size;
 dbiexhdr_data = (char *) malloc(size);
 if (!dbiexhdr_data) {
  return;
 }
 stream_file_read (stream_file, size, dbiexhdr_data);

 dbi_stream->dbiexhdrs = r_list_new ();
 p_tmp = dbiexhdr_data;
 while (i < size) {
  dbi_ex_header = (SDBIExHeader *) malloc (sizeof(SDBIExHeader));
  if (!dbi_ex_header) {
   break;
  }

  sz = parse_dbi_ex_header (p_tmp, size, dbi_ex_header);
  if ((sz % PDB_ALIGN)) {
   sz = sz + (PDB_ALIGN - (sz % PDB_ALIGN));
  }
  i += sz;
  p_tmp += sz;
  r_list_append (dbi_stream->dbiexhdrs, dbi_ex_header);
 }

 free (dbiexhdr_data);


 stream_file_seek(stream_file, dbi_stream->dbi_header.seccon_size, 1);

 stream_file_seek(stream_file, dbi_stream->dbi_header.secmap_size, 1);

 stream_file_seek(stream_file, dbi_stream->dbi_header.filinf_size, 1);

 stream_file_seek(stream_file, dbi_stream->dbi_header.tsmap_size, 1);

 stream_file_seek(stream_file, dbi_stream->dbi_header.ecinfo_size, 1);

 parse_dbg_header(&dbi_stream->dbg_header, stream_file);
}

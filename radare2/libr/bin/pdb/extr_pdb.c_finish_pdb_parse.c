
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int buf; TYPE_1__* stream_map; scalar_t__ pdb_streams2; scalar_t__ pdb_streams; TYPE_1__* root_stream; } ;
struct TYPE_14__ {struct TYPE_14__* stream; int (* free ) (TYPE_1__*) ;scalar_t__ streams_list; struct TYPE_14__* stream_pages; } ;
typedef TYPE_1__ STpiStream ;
typedef TYPE_1__ SStreamParseFunc ;
typedef TYPE_1__ SPage ;
typedef TYPE_1__ SPDBInfoStream ;
typedef TYPE_1__ SDbiStream ;
typedef TYPE_1__ R_PDB_STREAM ;
typedef TYPE_1__ R_PDB7_ROOT_STREAM ;
typedef TYPE_8__ R_PDB ;
typedef int RListIter ;


 int find_indx_in_list (scalar_t__,int,TYPE_1__**) ;
 int free (TYPE_1__*) ;
 int free_pdb_stream (TYPE_1__*) ;
 int r_buf_free (int ) ;
 int r_list_free (scalar_t__) ;
 scalar_t__ r_list_iter_get (int *) ;
 scalar_t__ r_list_iter_next (int *) ;
 int * r_list_iterator (scalar_t__) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void finish_pdb_parse(R_PDB *pdb) {
 R_PDB7_ROOT_STREAM *p = pdb->root_stream;
 RListIter *it;
 SPage *page = 0;

 if (!p) {
  return;
 }
 it = r_list_iterator (p->streams_list);
 while (r_list_iter_next (it)) {
  page = (SPage *) r_list_iter_get (it);
  free (page->stream_pages);
  page->stream_pages = 0;
  free (page);
  page = 0;
 }
 r_list_free (p->streams_list);
 p->streams_list = 0;
 free (p);
 p = 0;





 SPDBInfoStream *pdb_info_stream = 0;
 STpiStream *tpi_stream = 0;
 SDbiStream *dbi_stream = 0;
 SStreamParseFunc *stream_parse_func;
 R_PDB_STREAM *pdb_stream = 0;
 int i = 0;






 it = r_list_iterator (pdb->pdb_streams);
 while (r_list_iter_next (it)) {
  switch (i) {
  case 1:
   pdb_info_stream = (SPDBInfoStream *) r_list_iter_get (it);
   free_pdb_stream (pdb_info_stream);
   free (pdb_info_stream);
   break;
  case 2:
   tpi_stream = (STpiStream *) r_list_iter_get (it);
   free_pdb_stream (tpi_stream);
   free (tpi_stream);
   break;
  case 3:
   dbi_stream = (SDbiStream *) r_list_iter_get (it);
   free_pdb_stream (dbi_stream);
   free (dbi_stream);
   break;
  default:
   find_indx_in_list (pdb->pdb_streams2, i, &stream_parse_func);
   if (stream_parse_func) {
    break;
   }
   pdb_stream = (R_PDB_STREAM *) r_list_iter_get (it);
   free_pdb_stream (pdb_stream);
   free (pdb_stream);
   break;
  }
  i++;
 }

 r_list_free (pdb->pdb_streams);




 it = r_list_iterator (pdb->pdb_streams2);
 while (r_list_iter_next (it)) {
  stream_parse_func = (SStreamParseFunc *) r_list_iter_get (it);
  if (stream_parse_func->free) {
   stream_parse_func->free (stream_parse_func->stream);
   free (stream_parse_func->stream);
  }
  free (stream_parse_func);
 }

 r_list_free (pdb->pdb_streams2);


 free (pdb->stream_map);
 r_buf_free (pdb->buf);



}

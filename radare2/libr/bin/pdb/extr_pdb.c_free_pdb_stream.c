
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pages; } ;
typedef TYPE_1__ R_PDB_STREAM ;



__attribute__((used)) static void free_pdb_stream(void *stream) {
 R_PDB_STREAM *pdb_stream = (R_PDB_STREAM *) stream;
 if (pdb_stream) {

  if (pdb_stream->pages) {

   pdb_stream->pages = 0;
  }
 }
}

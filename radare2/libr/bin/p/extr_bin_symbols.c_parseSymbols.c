
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
typedef int ut32 ;
typedef int RList ;
typedef int RBuffer ;


 int * calloc (int const,int) ;
 int free (int *) ;
 int newSymbol (int *,int const,int const) ;
 int r_bin_symbol_free ;
 int r_buf_read_at (int *,int,int *,int) ;
 int r_list_append (int *,int ) ;
 int * r_list_newf (int ) ;
 int r_read_le32 (int *) ;

__attribute__((used)) static RList *parseSymbols(RBuffer *buf, int x, ut64 *eof, int count) {

 const int structSize = 24;
 if (eof) {
  *eof = x + (count * structSize);
 }

 ut8 *b = calloc (structSize, count);
 if (!b) {
  return ((void*)0);
 }
 RList *symbols = r_list_newf (r_bin_symbol_free);
 r_buf_read_at (buf, x, b, count * structSize);
 int i;
 for (i = 0; i < count; i++) {
  int n = (i * structSize);
  const ut32 A = r_read_le32 (b + n);
  const ut32 B = r_read_le32 (b + n + 4);






  r_list_append (symbols, newSymbol (((void*)0), A, B));
 }

 free (b);
 return symbols;
}

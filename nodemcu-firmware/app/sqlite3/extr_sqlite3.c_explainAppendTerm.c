
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StrAccum ;
typedef int Index ;


 int assert (int) ;
 int explainIndexColumnName (int *,int) ;
 int sqlite3StrAccumAppend (int *,char const*,int) ;
 int sqlite3StrAccumAppendAll (int *,int ) ;

__attribute__((used)) static void explainAppendTerm(
  StrAccum *pStr,
  Index *pIdx,
  int nTerm,
  int iTerm,
  int bAnd,
  const char *zOp
){
  int i;

  assert( nTerm>=1 );
  if( bAnd ) sqlite3StrAccumAppend(pStr, " AND ", 5);

  if( nTerm>1 ) sqlite3StrAccumAppend(pStr, "(", 1);
  for(i=0; i<nTerm; i++){
    if( i ) sqlite3StrAccumAppend(pStr, ",", 1);
    sqlite3StrAccumAppendAll(pStr, explainIndexColumnName(pIdx, iTerm+i));
  }
  if( nTerm>1 ) sqlite3StrAccumAppend(pStr, ")", 1);

  sqlite3StrAccumAppend(pStr, zOp, 1);

  if( nTerm>1 ) sqlite3StrAccumAppend(pStr, "(", 1);
  for(i=0; i<nTerm; i++){
    if( i ) sqlite3StrAccumAppend(pStr, ",", 1);
    sqlite3StrAccumAppend(pStr, "?", 1);
  }
  if( nTerm>1 ) sqlite3StrAccumAppend(pStr, ")", 1);
}

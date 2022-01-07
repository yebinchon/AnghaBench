
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vdbe ;


 scalar_t__ ALWAYS (int) ;
 int OP_Real ;
 int P4_REAL ;
 int SQLITE_UTF8 ;
 int assert (int) ;
 char* dup8bytes (int *,char*) ;
 int sqlite3AtoF (char const*,double*,int ,int ) ;
 int sqlite3IsNaN (double) ;
 int sqlite3Strlen30 (char const*) ;
 int sqlite3VdbeAddOp4 (int *,int ,int ,int,int ,char*,int ) ;

__attribute__((used)) static void codeReal(Vdbe *v, const char *z, int negateFlag, int iMem){
  if( ALWAYS(z!=0) ){
    double value;
    char *zV;
    sqlite3AtoF(z, &value, sqlite3Strlen30(z), SQLITE_UTF8);
    assert( !sqlite3IsNaN(value) );
    if( negateFlag ) value = -value;
    zV = dup8bytes(v, (char*)&value);
    sqlite3VdbeAddOp4(v, OP_Real, 0, iMem, 0, zV, P4_REAL);
  }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vdbe ;


 int memcpy (char*,char const*,int) ;
 char* sqlite3DbMallocRaw (int ,int) ;
 int sqlite3VdbeDb (int *) ;

__attribute__((used)) static char *dup8bytes(Vdbe *v, const char *in){
  char *out = sqlite3DbMallocRaw(sqlite3VdbeDb(v), 8);
  if( out ){
    memcpy(out, in, 8);
  }
  return out;
}

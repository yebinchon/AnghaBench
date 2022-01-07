
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_value ;
struct TYPE_3__ {int flags; scalar_t__ z; scalar_t__ n; } ;
typedef TYPE_1__ Mem ;


 scalar_t__ ExpandBlob (TYPE_1__*) ;
 int MEM_Blob ;
 int MEM_Null ;
 int MEM_Str ;
 scalar_t__ SQLITE_OK ;
 int assert (int) ;
 void const* sqlite3_value_text (int *) ;

const void *sqlite3_value_blob(sqlite3_value *pVal){
  Mem *p = (Mem*)pVal;
  if( p->flags & (MEM_Blob|MEM_Str) ){
    if( ExpandBlob(p)!=SQLITE_OK ){
      assert( p->flags==MEM_Null && p->z==0 );
      return 0;
    }
    p->flags |= MEM_Blob;
    return p->n ? p->z : 0;
  }else{
    return sqlite3_value_text(pVal);
  }
}

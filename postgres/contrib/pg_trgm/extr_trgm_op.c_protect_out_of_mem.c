
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int trgm ;
typedef int Size ;


 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int MaxAllocSize ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int pg_database_encoding_max_length () ;

__attribute__((used)) static void
protect_out_of_mem(int slen)
{
 if ((Size) (slen / 2) >= (MaxAllocSize / (sizeof(trgm) * 3)) ||
  (Size) slen >= (MaxAllocSize / pg_database_encoding_max_length()))
  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("out of memory")));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Tuplestorestate ;
typedef int MemoryContext ;
typedef int AttInMetadata ;


 int ERROR ;
 int MemoryContextSwitchTo (int ) ;
 int SPI_connect () ;
 int SPI_finish () ;
 int build_tuplestore_recursively (char*,char*,char*,char*,char*,char*,char*,int ,int*,int,int,int,int ,int *,int *) ;
 int elog (int ,char*,int) ;
 int * tuplestore_begin_heap (int,int,int ) ;
 int work_mem ;

__attribute__((used)) static Tuplestorestate *
connectby(char *relname,
    char *key_fld,
    char *parent_key_fld,
    char *orderby_fld,
    char *branch_delim,
    char *start_with,
    int max_depth,
    bool show_branch,
    bool show_serial,
    MemoryContext per_query_ctx,
    bool randomAccess,
    AttInMetadata *attinmeta)
{
 Tuplestorestate *tupstore = ((void*)0);
 int ret;
 MemoryContext oldcontext;

 int serial = 1;


 if ((ret = SPI_connect()) < 0)

  elog(ERROR, "connectby: SPI_connect returned %d", ret);


 oldcontext = MemoryContextSwitchTo(per_query_ctx);


 tupstore = tuplestore_begin_heap(randomAccess, 0, work_mem);

 MemoryContextSwitchTo(oldcontext);


 build_tuplestore_recursively(key_fld,
         parent_key_fld,
         relname,
         orderby_fld,
         branch_delim,
         start_with,
         start_with,
         0,
         &serial,
         max_depth,
         show_branch,
         show_serial,
         per_query_ctx,
         attinmeta,
         tupstore);

 SPI_finish();

 return tupstore;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PLpgSQL_datum ;


 int MemoryContextAlloc (int ,int) ;
 int datums_alloc ;
 scalar_t__ datums_last ;
 int plpgsql_Datums ;
 int plpgsql_compile_tmp_cxt ;
 scalar_t__ plpgsql_nDatums ;

__attribute__((used)) static void
plpgsql_start_datums(void)
{
 datums_alloc = 128;
 plpgsql_nDatums = 0;

 plpgsql_Datums = MemoryContextAlloc(plpgsql_compile_tmp_cxt,
          sizeof(PLpgSQL_datum *) * datums_alloc);

 datums_last = 0;
}

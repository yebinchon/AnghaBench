
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bytea ;
typedef int Page ;


 int BLCKSZ ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int VARDATA_ANY (int *) ;
 int VARSIZE_ANY_EXHDR (int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,int,int) ;
 int errmsg (char*) ;
 int memcpy (int ,int ,int) ;
 int palloc (int) ;

Page
get_page_from_raw(bytea *raw_page)
{
 Page page;
 int raw_page_size;

 raw_page_size = VARSIZE_ANY_EXHDR(raw_page);

 if (raw_page_size != BLCKSZ)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("invalid page size"),
     errdetail("Expected %d bytes, got %d.",
         BLCKSZ, raw_page_size)));

 page = palloc(raw_page_size);

 memcpy(page, VARDATA_ANY(raw_page), raw_page_size);

 return page;
}

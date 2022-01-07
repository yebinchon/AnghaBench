
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef int bytea ;
typedef int Page ;


 int BLCKSZ ;
 int BrinPageType (int ) ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int VARDATA (int *) ;
 int VARHDRSZ ;
 int VARSIZE (int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,int,int) ;
 int errmsg (char*,...) ;

__attribute__((used)) static Page
verify_brin_page(bytea *raw_page, uint16 type, const char *strtype)
{
 Page page;
 int raw_page_size;

 raw_page_size = VARSIZE(raw_page) - VARHDRSZ;

 if (raw_page_size != BLCKSZ)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("input page too small"),
     errdetail("Expected size %d, got %d",
         BLCKSZ, raw_page_size)));

 page = VARDATA(raw_page);


 if (BrinPageType(page) != type)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("page is not a BRIN page of type \"%s\"", strtype),
     errdetail("Expected special type %08x, got %08x.",
         type, BrinPageType(page))));

 return page;
}

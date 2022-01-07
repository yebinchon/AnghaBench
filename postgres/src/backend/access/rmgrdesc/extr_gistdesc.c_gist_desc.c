
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int gistxlogPageUpdate ;
typedef int gistxlogPageSplit ;
typedef int gistxlogPageReuse ;
typedef int gistxlogPageDelete ;
typedef int gistxlogDelete ;
typedef int XLogReaderState ;
typedef int StringInfo ;







 int XLR_INFO_MASK ;
 char* XLogRecGetData (int *) ;
 int XLogRecGetInfo (int *) ;
 int out_gistxlogDelete (int ,int *) ;
 int out_gistxlogPageDelete (int ,int *) ;
 int out_gistxlogPageReuse (int ,int *) ;
 int out_gistxlogPageSplit (int ,int *) ;
 int out_gistxlogPageUpdate (int ,int *) ;

void
gist_desc(StringInfo buf, XLogReaderState *record)
{
 char *rec = XLogRecGetData(record);
 uint8 info = XLogRecGetInfo(record) & ~XLR_INFO_MASK;

 switch (info)
 {
  case 128:
   out_gistxlogPageUpdate(buf, (gistxlogPageUpdate *) rec);
   break;
  case 130:
   out_gistxlogPageReuse(buf, (gistxlogPageReuse *) rec);
   break;
  case 132:
   out_gistxlogDelete(buf, (gistxlogDelete *) rec);
   break;
  case 129:
   out_gistxlogPageSplit(buf, (gistxlogPageSplit *) rec);
   break;
  case 131:
   out_gistxlogPageDelete(buf, (gistxlogPageDelete *) rec);
   break;
 }
}

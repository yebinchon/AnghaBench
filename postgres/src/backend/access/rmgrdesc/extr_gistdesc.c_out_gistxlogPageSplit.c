
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int npage; } ;
typedef TYPE_1__ gistxlogPageSplit ;
typedef int StringInfo ;


 int appendStringInfo (int ,char*,int ) ;

__attribute__((used)) static void
out_gistxlogPageSplit(StringInfo buf, gistxlogPageSplit *xlrec)
{
 appendStringInfo(buf, "page_split: splits to %d pages",
      xlrec->npage);
}

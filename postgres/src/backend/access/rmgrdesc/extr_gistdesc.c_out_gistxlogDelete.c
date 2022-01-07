
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ntodelete; int latestRemovedXid; } ;
typedef TYPE_1__ gistxlogDelete ;
typedef int StringInfo ;


 int appendStringInfo (int ,char*,int ,int ) ;

__attribute__((used)) static void
out_gistxlogDelete(StringInfo buf, gistxlogDelete *xlrec)
{
 appendStringInfo(buf, "delete: latestRemovedXid %u, nitems: %u",
      xlrec->latestRemovedXid, xlrec->ntodelete);

}

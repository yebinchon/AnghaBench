
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Plan ;
typedef int BitmapOr ;


 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outPlanInfo (int ,int const*) ;
 int bitmapplans ;
 int isshared ;

__attribute__((used)) static void
_outBitmapOr(StringInfo str, const BitmapOr *node)
{
 WRITE_NODE_TYPE("BITMAPOR");

 _outPlanInfo(str, (const Plan *) node);

 WRITE_BOOL_FIELD(isshared);
 WRITE_NODE_FIELD(bitmapplans);
}

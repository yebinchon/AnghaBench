
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Plan ;
typedef int BitmapAnd ;


 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outPlanInfo (int ,int const*) ;
 int bitmapplans ;

__attribute__((used)) static void
_outBitmapAnd(StringInfo str, const BitmapAnd *node)
{
 WRITE_NODE_TYPE("BITMAPAND");

 _outPlanInfo(str, (const Plan *) node);

 WRITE_NODE_FIELD(bitmapplans);
}

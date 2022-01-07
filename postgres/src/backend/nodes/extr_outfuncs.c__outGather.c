
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Plan ;
typedef int Gather ;


 int WRITE_BITMAPSET_FIELD (int ) ;
 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outPlanInfo (int ,int const*) ;
 int initParam ;
 int invisible ;
 int num_workers ;
 int rescan_param ;
 int single_copy ;

__attribute__((used)) static void
_outGather(StringInfo str, const Gather *node)
{
 WRITE_NODE_TYPE("GATHER");

 _outPlanInfo(str, (const Plan *) node);

 WRITE_INT_FIELD(num_workers);
 WRITE_INT_FIELD(rescan_param);
 WRITE_BOOL_FIELD(single_copy);
 WRITE_BOOL_FIELD(invisible);
 WRITE_BITMAPSET_FIELD(initParam);
}

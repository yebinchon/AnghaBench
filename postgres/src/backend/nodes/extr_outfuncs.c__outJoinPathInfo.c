
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Path ;
typedef int JoinPath ;


 int JoinType ;
 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int _outPathInfo (int ,int const*) ;
 int inner_unique ;
 int innerjoinpath ;
 int joinrestrictinfo ;
 int jointype ;
 int outerjoinpath ;

__attribute__((used)) static void
_outJoinPathInfo(StringInfo str, const JoinPath *node)
{
 _outPathInfo(str, (const Path *) node);

 WRITE_ENUM_FIELD(jointype, JoinType);
 WRITE_BOOL_FIELD(inner_unique);
 WRITE_NODE_FIELD(outerjoinpath);
 WRITE_NODE_FIELD(innerjoinpath);
 WRITE_NODE_FIELD(joinrestrictinfo);
}

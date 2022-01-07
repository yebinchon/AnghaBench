
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int MergePath ;
typedef int JoinPath ;


 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outJoinPathInfo (int ,int const*) ;
 int innersortkeys ;
 int materialize_inner ;
 int outersortkeys ;
 int path_mergeclauses ;
 int skip_mark_restore ;

__attribute__((used)) static void
_outMergePath(StringInfo str, const MergePath *node)
{
 WRITE_NODE_TYPE("MERGEPATH");

 _outJoinPathInfo(str, (const JoinPath *) node);

 WRITE_NODE_FIELD(path_mergeclauses);
 WRITE_NODE_FIELD(outersortkeys);
 WRITE_NODE_FIELD(innersortkeys);
 WRITE_BOOL_FIELD(skip_mark_restore);
 WRITE_BOOL_FIELD(materialize_inner);
}

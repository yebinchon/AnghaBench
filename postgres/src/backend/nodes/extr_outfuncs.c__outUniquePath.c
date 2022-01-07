
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UniquePath ;
typedef int StringInfo ;
typedef int Path ;


 int UniquePathMethod ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outPathInfo (int ,int const*) ;
 int in_operators ;
 int subpath ;
 int umethod ;
 int uniq_exprs ;

__attribute__((used)) static void
_outUniquePath(StringInfo str, const UniquePath *node)
{
 WRITE_NODE_TYPE("UNIQUEPATH");

 _outPathInfo(str, (const Path *) node);

 WRITE_NODE_FIELD(subpath);
 WRITE_ENUM_FIELD(umethod, UniquePathMethod);
 WRITE_NODE_FIELD(in_operators);
 WRITE_NODE_FIELD(uniq_exprs);
}

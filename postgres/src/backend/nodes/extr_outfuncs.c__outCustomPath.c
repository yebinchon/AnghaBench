
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* methods; } ;
struct TYPE_4__ {int CustomName; } ;
typedef int StringInfo ;
typedef int Path ;
typedef TYPE_2__ CustomPath ;


 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_UINT_FIELD (int ) ;
 int _outPathInfo (int ,int const*) ;
 int appendStringInfoString (int ,char*) ;
 int custom_paths ;
 int custom_private ;
 int flags ;
 int outToken (int ,int ) ;

__attribute__((used)) static void
_outCustomPath(StringInfo str, const CustomPath *node)
{
 WRITE_NODE_TYPE("CUSTOMPATH");

 _outPathInfo(str, (const Path *) node);

 WRITE_UINT_FIELD(flags);
 WRITE_NODE_FIELD(custom_paths);
 WRITE_NODE_FIELD(custom_private);
 appendStringInfoString(str, " :methods ");
 outToken(str, node->methods->CustomName);
}

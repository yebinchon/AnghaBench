
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Path ;


 int WRITE_NODE_TYPE (char*) ;
 int _outPathInfo (int ,int const*) ;

__attribute__((used)) static void
_outPath(StringInfo str, const Path *node)
{
 WRITE_NODE_TYPE("PATH");

 _outPathInfo(str, (const Path *) node);
}

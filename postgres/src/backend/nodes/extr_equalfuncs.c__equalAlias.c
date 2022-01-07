
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Alias ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int aliasname ;
 int colnames ;

__attribute__((used)) static bool
_equalAlias(const Alias *a, const Alias *b)
{
 COMPARE_STRING_FIELD(aliasname);
 COMPARE_NODE_FIELD(colnames);

 return 1;
}

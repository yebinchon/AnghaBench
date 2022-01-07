
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AccessPriv ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int cols ;
 int priv_name ;

__attribute__((used)) static bool
_equalAccessPriv(const AccessPriv *a, const AccessPriv *b)
{
 COMPARE_STRING_FIELD(priv_name);
 COMPARE_NODE_FIELD(cols);

 return 1;
}

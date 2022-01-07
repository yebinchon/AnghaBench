
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CheckTransactionBlock (int,int,char const*) ;

void
RequireTransactionBlock(bool isTopLevel, const char *stmtType)
{
 CheckTransactionBlock(isTopLevel, 1, stmtType);
}

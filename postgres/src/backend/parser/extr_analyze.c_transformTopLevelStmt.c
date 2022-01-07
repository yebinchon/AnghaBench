
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int stmt_len; int stmt_location; } ;
struct TYPE_6__ {int stmt_len; int stmt_location; int stmt; } ;
typedef TYPE_1__ RawStmt ;
typedef TYPE_2__ Query ;
typedef int ParseState ;


 TYPE_2__* transformOptionalSelectInto (int *,int ) ;

Query *
transformTopLevelStmt(ParseState *pstate, RawStmt *parseTree)
{
 Query *result;


 result = transformOptionalSelectInto(pstate, parseTree->stmt);

 result->stmt_location = parseTree->stmt_location;
 result->stmt_len = parseTree->stmt_len;

 return result;
}

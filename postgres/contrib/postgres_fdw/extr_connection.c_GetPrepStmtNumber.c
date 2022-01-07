
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGconn ;


 unsigned int prep_stmt_number ;

unsigned int
GetPrepStmtNumber(PGconn *conn)
{
 return ++prep_stmt_number;
}

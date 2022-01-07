
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pversion; } ;
typedef TYPE_1__ PGconn ;


 int PG_PROTOCOL_MAJOR (int ) ;
 int pqParseInput2 (TYPE_1__*) ;
 int pqParseInput3 (TYPE_1__*) ;

__attribute__((used)) static void
parseInput(PGconn *conn)
{
 if (PG_PROTOCOL_MAJOR(conn->pversion) >= 3)
  pqParseInput3(conn);
 else
  pqParseInput2(conn);
}

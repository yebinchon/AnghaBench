
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int forget_invalid_pages_db (int ) ;
 int smgrcloseall () ;

void
XLogDropDatabase(Oid dbid)
{






 smgrcloseall();

 forget_invalid_pages_db(dbid);
}

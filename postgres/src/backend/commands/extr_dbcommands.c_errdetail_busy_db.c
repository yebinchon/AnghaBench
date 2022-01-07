
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errdetail (char*,int,int) ;
 int errdetail_plural (char*,char*,int,int) ;

__attribute__((used)) static int
errdetail_busy_db(int notherbackends, int npreparedxacts)
{
 if (notherbackends > 0 && npreparedxacts > 0)





  errdetail("There are %d other session(s) and %d prepared transaction(s) using the database.",
      notherbackends, npreparedxacts);
 else if (notherbackends > 0)
  errdetail_plural("There is %d other session using the database.",
       "There are %d other sessions using the database.",
       notherbackends,
       notherbackends);
 else
  errdetail_plural("There is %d prepared transaction using the database.",
       "There are %d prepared transactions using the database.",
       npreparedxacts,
       npreparedxacts);
 return 0;
}

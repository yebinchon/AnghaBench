
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;


 int CheckTableNotInUse (int ,char*) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 scalar_t__ RELATION_IS_OTHER_TEMP (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

__attribute__((used)) static void
truncate_check_activity(Relation rel)
{




 if (RELATION_IS_OTHER_TEMP(rel))
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot truncate temporary tables of other sessions")));





 CheckTableNotInUse(rel, "TRUNCATE");
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ skipData; } ;
typedef TYPE_1__ IntoClause ;


 int EXEC_FLAG_WITH_NO_DATA ;

int
GetIntoRelEFlags(IntoClause *intoClause)
{
 int flags = 0;

 if (intoClause->skipData)
  flags |= EXEC_FLAG_WITH_NO_DATA;

 return flags;
}

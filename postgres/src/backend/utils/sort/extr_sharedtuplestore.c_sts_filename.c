
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* sts; } ;
struct TYPE_4__ {char* name; } ;
typedef TYPE_2__ SharedTuplestoreAccessor ;


 int MAXPGPATH ;
 int snprintf (char*,int ,char*,char*,int) ;

__attribute__((used)) static void
sts_filename(char *name, SharedTuplestoreAccessor *accessor, int participant)
{
 snprintf(name, MAXPGPATH, "%s.p%d", accessor->sts->name, participant);
}

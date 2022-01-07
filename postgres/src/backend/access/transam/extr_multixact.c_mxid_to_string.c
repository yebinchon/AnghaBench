
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int status; int xid; } ;
struct TYPE_7__ {char* data; } ;
typedef TYPE_1__ StringInfoData ;
typedef TYPE_2__ MultiXactMember ;
typedef int MultiXactId ;


 char* MemoryContextStrdup (int ,char*) ;
 int TopMemoryContext ;
 int appendStringInfo (TYPE_1__*,char*,int ,int,...) ;
 int appendStringInfoChar (TYPE_1__*,char) ;
 int initStringInfo (TYPE_1__*) ;
 int mxstatus_to_string (int ) ;
 int pfree (char*) ;

char *
mxid_to_string(MultiXactId multi, int nmembers, MultiXactMember *members)
{
 static char *str = ((void*)0);
 StringInfoData buf;
 int i;

 if (str != ((void*)0))
  pfree(str);

 initStringInfo(&buf);

 appendStringInfo(&buf, "%u %d[%u (%s)", multi, nmembers, members[0].xid,
      mxstatus_to_string(members[0].status));

 for (i = 1; i < nmembers; i++)
  appendStringInfo(&buf, ", %u (%s)", members[i].xid,
       mxstatus_to_string(members[i].status));

 appendStringInfoChar(&buf, ']');
 str = MemoryContextStrdup(TopMemoryContext, buf.data);
 pfree(buf.data);
 return str;
}

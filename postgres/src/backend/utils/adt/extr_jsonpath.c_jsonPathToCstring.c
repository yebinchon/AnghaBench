
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int header; } ;
struct TYPE_11__ {char* data; } ;
typedef TYPE_1__ StringInfoData ;
typedef TYPE_1__* StringInfo ;
typedef int JsonPathItem ;
typedef TYPE_3__ JsonPath ;


 int JSONPATH_LAX ;
 int appendBinaryStringInfo (TYPE_1__*,char*,int) ;
 int enlargeStringInfo (TYPE_1__*,int) ;
 int initStringInfo (TYPE_1__*) ;
 int jspInit (int *,TYPE_3__*) ;
 int printJsonPathItem (TYPE_1__*,int *,int,int) ;

__attribute__((used)) static char *
jsonPathToCstring(StringInfo out, JsonPath *in, int estimated_len)
{
 StringInfoData buf;
 JsonPathItem v;

 if (!out)
 {
  out = &buf;
  initStringInfo(out);
 }
 enlargeStringInfo(out, estimated_len);

 if (!(in->header & JSONPATH_LAX))
  appendBinaryStringInfo(out, "strict ", 7);

 jspInit(&v, in);
 printJsonPathItem(out, &v, 0, 1);

 return out->data;
}

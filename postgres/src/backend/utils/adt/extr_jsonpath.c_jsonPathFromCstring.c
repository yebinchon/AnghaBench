
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int header; } ;
struct TYPE_12__ {scalar_t__ lax; int expr; } ;
struct TYPE_11__ {int len; scalar_t__ data; } ;
typedef TYPE_1__ StringInfoData ;
typedef TYPE_2__ JsonPathParseResult ;
typedef TYPE_3__ JsonPath ;
typedef int Datum ;


 int ERRCODE_INVALID_TEXT_REPRESENTATION ;
 int ERROR ;
 int JSONPATH_HDRSZ ;
 int JSONPATH_LAX ;
 int JSONPATH_VERSION ;
 int PG_RETURN_JSONPATH_P (TYPE_3__*) ;
 int SET_VARSIZE (TYPE_3__*,int ) ;
 int appendStringInfoSpaces (TYPE_1__*,int ) ;
 int enlargeStringInfo (TYPE_1__*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*,char*) ;
 int flattenJsonPathParseItem (TYPE_1__*,int ,int ,int) ;
 int initStringInfo (TYPE_1__*) ;
 TYPE_2__* parsejsonpath (char*,int) ;

__attribute__((used)) static Datum
jsonPathFromCstring(char *in, int len)
{
 JsonPathParseResult *jsonpath = parsejsonpath(in, len);
 JsonPath *res;
 StringInfoData buf;

 initStringInfo(&buf);
 enlargeStringInfo(&buf, 4 * len );

 appendStringInfoSpaces(&buf, JSONPATH_HDRSZ);

 if (!jsonpath)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
     errmsg("invalid input syntax for type %s: \"%s\"", "jsonpath",
      in)));

 flattenJsonPathParseItem(&buf, jsonpath->expr, 0, 0);

 res = (JsonPath *) buf.data;
 SET_VARSIZE(res, buf.len);
 res->header = JSONPATH_VERSION;
 if (jsonpath->lax)
  res->header |= JSONPATH_LAX;

 PG_RETURN_JSONPATH_P(res);
}

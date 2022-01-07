
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* data; } ;
typedef TYPE_1__* PQExpBuffer ;


 scalar_t__* ScanKeywordCategories ;
 int ScanKeywordLookup (char const*,int *) ;
 int ScanKeywords ;
 scalar_t__ UNRESERVED_KEYWORD ;
 int appendPQExpBufferChar (TYPE_1__*,char const) ;
 int appendPQExpBufferStr (TYPE_1__*,char const*) ;
 TYPE_1__* getLocalPQExpBuffer () ;
 scalar_t__ quote_all_identifiers ;

const char *
fmtId(const char *rawid)
{
 PQExpBuffer id_return = getLocalPQExpBuffer();

 const char *cp;
 bool need_quotes = 0;





 if (quote_all_identifiers)
  need_quotes = 1;

 else if (!((rawid[0] >= 'a' && rawid[0] <= 'z') || rawid[0] == '_'))
  need_quotes = 1;
 else
 {

  for (cp = rawid; *cp; cp++)
  {
   if (!((*cp >= 'a' && *cp <= 'z')
      || (*cp >= '0' && *cp <= '9')
      || (*cp == '_')))
   {
    need_quotes = 1;
    break;
   }
  }
 }

 if (!need_quotes)
 {
  int kwnum = ScanKeywordLookup(rawid, &ScanKeywords);

  if (kwnum >= 0 && ScanKeywordCategories[kwnum] != UNRESERVED_KEYWORD)
   need_quotes = 1;
 }

 if (!need_quotes)
 {

  appendPQExpBufferStr(id_return, rawid);
 }
 else
 {
  appendPQExpBufferChar(id_return, '"');
  for (cp = rawid; *cp; cp++)
  {





   if (*cp == '"')
    appendPQExpBufferChar(id_return, '"');
   appendPQExpBufferChar(id_return, *cp);
  }
  appendPQExpBufferChar(id_return, '"');
 }

 return id_return->data;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;


 int ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE ;
 int ERROR ;
 int INT_MIN ;
 int TEXT_FORMAT_FLAG_MINUS ;
 int appendStringInfoSpaces (int ,int) ;
 int appendStringInfoString (int ,char const*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int pg_mbstrlen (char const*) ;

__attribute__((used)) static void
text_format_append_string(StringInfo buf, const char *str,
        int flags, int width)
{
 bool align_to_left = 0;
 int len;


 if (width == 0)
 {
  appendStringInfoString(buf, str);
  return;
 }

 if (width < 0)
 {

  align_to_left = 1;

  if (width <= INT_MIN)
   ereport(ERROR,
     (errcode(ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE),
      errmsg("number is out of range")));
  width = -width;
 }
 else if (flags & TEXT_FORMAT_FLAG_MINUS)
  align_to_left = 1;

 len = pg_mbstrlen(str);
 if (align_to_left)
 {

  appendStringInfoString(buf, str);
  if (len < width)
   appendStringInfoSpaces(buf, width - len);
 }
 else
 {

  if (len < width)
   appendStringInfoSpaces(buf, width - len);
  appendStringInfoString(buf, str);
 }
}

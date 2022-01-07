
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int input_length; char* token_start; char* input; char* token_terminator; char* prev_token_terminator; int * strval; } ;
typedef TYPE_1__ JsonLexContext ;


 int Assert (int) ;
 int ERRCODE_INVALID_TEXT_REPRESENTATION ;
 int ERRCODE_UNTRANSLATABLE_CHARACTER ;
 int ERROR ;
 scalar_t__ GetDatabaseEncoding () ;
 scalar_t__ PG_UTF8 ;
 int appendBinaryStringInfo (int *,char*,int) ;
 int appendStringInfoChar (int *,char) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,...) ;
 int errmsg (char*,...) ;
 int extract_mb_char (char*) ;
 int pg_mblen (char*) ;
 int pg_utf_mblen (unsigned char*) ;
 int report_invalid_token (TYPE_1__*) ;
 int report_json_context (TYPE_1__*) ;
 int resetStringInfo (int *) ;
 int * strchr (char*,char) ;
 int unicode_to_utf8 (int,unsigned char*) ;

__attribute__((used)) static inline void
json_lex_string(JsonLexContext *lex)
{
 char *s;
 int len;
 int hi_surrogate = -1;

 if (lex->strval != ((void*)0))
  resetStringInfo(lex->strval);

 Assert(lex->input_length > 0);
 s = lex->token_start;
 len = lex->token_start - lex->input;
 for (;;)
 {
  s++;
  len++;

  if (len >= lex->input_length)
  {
   lex->token_terminator = s;
   report_invalid_token(lex);
  }
  else if (*s == '"')
   break;
  else if ((unsigned char) *s < 32)
  {


   lex->token_terminator = s;
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
      errmsg("invalid input syntax for type %s", "json"),
      errdetail("Character with value 0x%02x must be escaped.",
          (unsigned char) *s),
      report_json_context(lex)));
  }
  else if (*s == '\\')
  {

   s++;
   len++;
   if (len >= lex->input_length)
   {
    lex->token_terminator = s;
    report_invalid_token(lex);
   }
   else if (*s == 'u')
   {
    int i;
    int ch = 0;

    for (i = 1; i <= 4; i++)
    {
     s++;
     len++;
     if (len >= lex->input_length)
     {
      lex->token_terminator = s;
      report_invalid_token(lex);
     }
     else if (*s >= '0' && *s <= '9')
      ch = (ch * 16) + (*s - '0');
     else if (*s >= 'a' && *s <= 'f')
      ch = (ch * 16) + (*s - 'a') + 10;
     else if (*s >= 'A' && *s <= 'F')
      ch = (ch * 16) + (*s - 'A') + 10;
     else
     {
      lex->token_terminator = s + pg_mblen(s);
      ereport(ERROR,
        (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
         errmsg("invalid input syntax for type %s",
          "json"),
         errdetail("\"\\u\" must be followed by four hexadecimal digits."),
         report_json_context(lex)));
     }
    }
    if (lex->strval != ((void*)0))
    {
     char utf8str[5];
     int utf8len;

     if (ch >= 0xd800 && ch <= 0xdbff)
     {
      if (hi_surrogate != -1)
       ereport(ERROR,
         (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
          errmsg("invalid input syntax for type %s",
           "json"),
          errdetail("Unicode high surrogate must not follow a high surrogate."),
          report_json_context(lex)));
      hi_surrogate = (ch & 0x3ff) << 10;
      continue;
     }
     else if (ch >= 0xdc00 && ch <= 0xdfff)
     {
      if (hi_surrogate == -1)
       ereport(ERROR,
         (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
          errmsg("invalid input syntax for type %s", "json"),
          errdetail("Unicode low surrogate must follow a high surrogate."),
          report_json_context(lex)));
      ch = 0x10000 + hi_surrogate + (ch & 0x3ff);
      hi_surrogate = -1;
     }

     if (hi_surrogate != -1)
      ereport(ERROR,
        (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
         errmsg("invalid input syntax for type %s", "json"),
         errdetail("Unicode low surrogate must follow a high surrogate."),
         report_json_context(lex)));
     if (ch == 0)
     {

      ereport(ERROR,
        (errcode(ERRCODE_UNTRANSLATABLE_CHARACTER),
         errmsg("unsupported Unicode escape sequence"),
         errdetail("\\u0000 cannot be converted to text."),
         report_json_context(lex)));
     }
     else if (GetDatabaseEncoding() == PG_UTF8)
     {
      unicode_to_utf8(ch, (unsigned char *) utf8str);
      utf8len = pg_utf_mblen((unsigned char *) utf8str);
      appendBinaryStringInfo(lex->strval, utf8str, utf8len);
     }
     else if (ch <= 0x007f)
     {





      appendStringInfoChar(lex->strval, (char) ch);
     }
     else
     {
      ereport(ERROR,
        (errcode(ERRCODE_UNTRANSLATABLE_CHARACTER),
         errmsg("unsupported Unicode escape sequence"),
         errdetail("Unicode escape values cannot be used for code point values above 007F when the server encoding is not UTF8."),
         report_json_context(lex)));
     }

    }
   }
   else if (lex->strval != ((void*)0))
   {
    if (hi_surrogate != -1)
     ereport(ERROR,
       (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
        errmsg("invalid input syntax for type %s",
         "json"),
        errdetail("Unicode low surrogate must follow a high surrogate."),
        report_json_context(lex)));

    switch (*s)
    {
     case '"':
     case '\\':
     case '/':
      appendStringInfoChar(lex->strval, *s);
      break;
     case 'b':
      appendStringInfoChar(lex->strval, '\b');
      break;
     case 'f':
      appendStringInfoChar(lex->strval, '\f');
      break;
     case 'n':
      appendStringInfoChar(lex->strval, '\n');
      break;
     case 'r':
      appendStringInfoChar(lex->strval, '\r');
      break;
     case 't':
      appendStringInfoChar(lex->strval, '\t');
      break;
     default:

      lex->token_terminator = s + pg_mblen(s);
      ereport(ERROR,
        (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
         errmsg("invalid input syntax for type %s",
          "json"),
         errdetail("Escape sequence \"\\%s\" is invalid.",
             extract_mb_char(s)),
         report_json_context(lex)));
    }
   }
   else if (strchr("\"\\/bfnrt", *s) == ((void*)0))
   {







    lex->token_terminator = s + pg_mblen(s);
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
       errmsg("invalid input syntax for type %s", "json"),
       errdetail("Escape sequence \"\\%s\" is invalid.",
           extract_mb_char(s)),
       report_json_context(lex)));
   }

  }
  else if (lex->strval != ((void*)0))
  {
   if (hi_surrogate != -1)
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
       errmsg("invalid input syntax for type %s", "json"),
       errdetail("Unicode low surrogate must follow a high surrogate."),
       report_json_context(lex)));

   appendStringInfoChar(lex->strval, *s);
  }

 }

 if (hi_surrogate != -1)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
     errmsg("invalid input syntax for type %s", "json"),
     errdetail("Unicode low surrogate must follow a high surrogate."),
     report_json_context(lex)));


 lex->prev_token_terminator = lex->token_terminator;
 lex->token_terminator = s + 1;
}

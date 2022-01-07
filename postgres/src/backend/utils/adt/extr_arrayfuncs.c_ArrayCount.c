
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ArrayParseState ;


 scalar_t__ ARRAY_ELEM_COMPLETED ;
 scalar_t__ ARRAY_ELEM_DELIMITED ;
 scalar_t__ ARRAY_ELEM_STARTED ;
 scalar_t__ ARRAY_LEVEL_COMPLETED ;
 scalar_t__ ARRAY_LEVEL_DELIMITED ;
 scalar_t__ ARRAY_LEVEL_STARTED ;
 scalar_t__ ARRAY_NO_LEVEL ;
 scalar_t__ ARRAY_QUOTED_ELEM_COMPLETED ;
 scalar_t__ ARRAY_QUOTED_ELEM_STARTED ;
 int ERRCODE_INVALID_TEXT_REPRESENTATION ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int MAXDIM ;
 int array_isspace (char const) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,...) ;
 int errmsg (char*,...) ;

__attribute__((used)) static int
ArrayCount(const char *str, int *dim, char typdelim)
{
 int nest_level = 0,
    i;
 int ndim = 1,
    temp[MAXDIM],
    nelems[MAXDIM],
    nelems_last[MAXDIM];
 bool in_quotes = 0;
 bool eoArray = 0;
 bool empty_array = 1;
 const char *ptr;
 ArrayParseState parse_state = ARRAY_NO_LEVEL;

 for (i = 0; i < MAXDIM; ++i)
 {
  temp[i] = dim[i] = nelems_last[i] = 0;
  nelems[i] = 1;
 }

 ptr = str;
 while (!eoArray)
 {
  bool itemdone = 0;

  while (!itemdone)
  {
   if (parse_state == ARRAY_ELEM_STARTED ||
    parse_state == ARRAY_QUOTED_ELEM_STARTED)
    empty_array = 0;

   switch (*ptr)
   {
    case '\0':

     ereport(ERROR,
       (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
        errmsg("malformed array literal: \"%s\"", str),
        errdetail("Unexpected end of input.")));
     break;
    case '\\':






     if (parse_state != ARRAY_LEVEL_STARTED &&
      parse_state != ARRAY_ELEM_STARTED &&
      parse_state != ARRAY_QUOTED_ELEM_STARTED &&
      parse_state != ARRAY_ELEM_DELIMITED)
      ereport(ERROR,
        (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
         errmsg("malformed array literal: \"%s\"", str),
         errdetail("Unexpected \"%c\" character.",
             '\\')));
     if (parse_state != ARRAY_QUOTED_ELEM_STARTED)
      parse_state = ARRAY_ELEM_STARTED;

     if (*(ptr + 1))
      ptr++;
     else
      ereport(ERROR,
        (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
         errmsg("malformed array literal: \"%s\"", str),
         errdetail("Unexpected end of input.")));
     break;
    case '"':






     if (parse_state != ARRAY_LEVEL_STARTED &&
      parse_state != ARRAY_QUOTED_ELEM_STARTED &&
      parse_state != ARRAY_ELEM_DELIMITED)
      ereport(ERROR,
        (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
         errmsg("malformed array literal: \"%s\"", str),
         errdetail("Unexpected array element.")));
     in_quotes = !in_quotes;
     if (in_quotes)
      parse_state = ARRAY_QUOTED_ELEM_STARTED;
     else
      parse_state = ARRAY_QUOTED_ELEM_COMPLETED;
     break;
    case '{':
     if (!in_quotes)
     {





      if (parse_state != ARRAY_NO_LEVEL &&
       parse_state != ARRAY_LEVEL_STARTED &&
       parse_state != ARRAY_LEVEL_DELIMITED)
       ereport(ERROR,
         (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
          errmsg("malformed array literal: \"%s\"", str),
          errdetail("Unexpected \"%c\" character.",
              '{')));
      parse_state = ARRAY_LEVEL_STARTED;
      if (nest_level >= MAXDIM)
       ereport(ERROR,
         (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
          errmsg("number of array dimensions (%d) exceeds the maximum allowed (%d)",
           nest_level + 1, MAXDIM)));
      temp[nest_level] = 0;
      nest_level++;
      if (ndim < nest_level)
       ndim = nest_level;
     }
     break;
    case '}':
     if (!in_quotes)
     {





      if (parse_state != ARRAY_ELEM_STARTED &&
       parse_state != ARRAY_ELEM_COMPLETED &&
       parse_state != ARRAY_QUOTED_ELEM_COMPLETED &&
       parse_state != ARRAY_LEVEL_COMPLETED &&
       !(nest_level == 1 && parse_state == ARRAY_LEVEL_STARTED))
       ereport(ERROR,
         (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
          errmsg("malformed array literal: \"%s\"", str),
          errdetail("Unexpected \"%c\" character.",
              '}')));
      parse_state = ARRAY_LEVEL_COMPLETED;
      if (nest_level == 0)
       ereport(ERROR,
         (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
          errmsg("malformed array literal: \"%s\"", str),
          errdetail("Unmatched \"%c\" character.", '}')));
      nest_level--;

      if (nelems_last[nest_level] != 0 &&
       nelems[nest_level] != nelems_last[nest_level])
       ereport(ERROR,
         (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
          errmsg("malformed array literal: \"%s\"", str),
          errdetail("Multidimensional arrays must have "
              "sub-arrays with matching "
              "dimensions.")));
      nelems_last[nest_level] = nelems[nest_level];
      nelems[nest_level] = 1;
      if (nest_level == 0)
       eoArray = itemdone = 1;
      else
      {




       temp[nest_level - 1]++;
      }
     }
     break;
    default:
     if (!in_quotes)
     {
      if (*ptr == typdelim)
      {





       if (parse_state != ARRAY_ELEM_STARTED &&
        parse_state != ARRAY_ELEM_COMPLETED &&
        parse_state != ARRAY_QUOTED_ELEM_COMPLETED &&
        parse_state != ARRAY_LEVEL_COMPLETED)
        ereport(ERROR,
          (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
           errmsg("malformed array literal: \"%s\"", str),
           errdetail("Unexpected \"%c\" character.",
               typdelim)));
       if (parse_state == ARRAY_LEVEL_COMPLETED)
        parse_state = ARRAY_LEVEL_DELIMITED;
       else
        parse_state = ARRAY_ELEM_DELIMITED;
       itemdone = 1;
       nelems[nest_level - 1]++;
      }
      else if (!array_isspace(*ptr))
      {






       if (parse_state != ARRAY_LEVEL_STARTED &&
        parse_state != ARRAY_ELEM_STARTED &&
        parse_state != ARRAY_ELEM_DELIMITED)
        ereport(ERROR,
          (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
           errmsg("malformed array literal: \"%s\"", str),
           errdetail("Unexpected array element.")));
       parse_state = ARRAY_ELEM_STARTED;
      }
     }
     break;
   }
   if (!itemdone)
    ptr++;
  }
  temp[ndim - 1]++;
  ptr++;
 }


 while (*ptr)
 {
  if (!array_isspace(*ptr++))
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
      errmsg("malformed array literal: \"%s\"", str),
      errdetail("Junk after closing right brace.")));
 }


 if (empty_array)
  return 0;

 for (i = 0; i < ndim; ++i)
  dim[i] = temp[i];

 return ndim;
}

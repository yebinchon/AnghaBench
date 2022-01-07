
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ts_tokentype ;
typedef int int8 ;
typedef scalar_t__ int16 ;
struct TYPE_3__ {char* buf; int count; } ;
typedef TYPE_1__* TSQueryParserState ;


 int PT_END ;
 int PT_VAL ;
 int strlen (char*) ;

__attribute__((used)) static ts_tokentype
gettoken_query_plain(TSQueryParserState state, int8 *operator,
      int *lenval, char **strval,
      int16 *weight, bool *prefix)
{
 *weight = 0;
 *prefix = 0;

 if (*state->buf == '\0')
  return PT_END;

 *strval = state->buf;
 *lenval = strlen(state->buf);
 state->buf += *lenval;
 state->count++;
 return PT_VAL;
}

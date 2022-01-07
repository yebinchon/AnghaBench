
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_21__ {int current; int buff; } ;
struct TYPE_20__ {int * ts; } ;
typedef int TString ;
typedef TYPE_1__ SemInfo ;
typedef TYPE_2__ LexState ;



 int FIRST_RESERVED ;
 int NUM_RESERVED ;
 int TK_CONCAT ;
 int TK_DOTS ;
 int TK_EOS ;
 int TK_EQ ;
 int TK_GE ;
 int TK_LE ;
 int TK_NAME ;
 int TK_NE ;
 int TK_NUMBER ;
 int TK_STRING ;
 int check_next (TYPE_2__*,char*) ;
 int currIsNewline (TYPE_2__*) ;
 int inclinenumber (TYPE_2__*) ;
 int isalnum (char) ;
 int isalpha (char) ;
 int isdigit (char) ;
 int isspace (char) ;
 int luaX_lexerror (TYPE_2__*,char*,int) ;
 int * luaX_newstring (TYPE_2__*,int ,int ) ;
 int * luaX_tokens ;
 int luaZ_buffer (int ) ;
 int luaZ_bufflen (int ) ;
 int luaZ_resetbuffer (int ) ;
 int lua_assert (int) ;
 int next (TYPE_2__*) ;
 int read_long_string (TYPE_2__*,TYPE_1__*,int) ;
 int read_numeral (TYPE_2__*,TYPE_1__*) ;
 int read_string (TYPE_2__*,char,TYPE_1__*) ;
 int save (TYPE_2__*,char) ;
 int save_and_next (TYPE_2__*) ;
 int skip_sep (TYPE_2__*) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int llex (LexState *ls, SemInfo *seminfo) {
  luaZ_resetbuffer(ls->buff);
  for (;;) {
    switch (ls->current) {
      case '\n':
      case '\r': {
        inclinenumber(ls);
        continue;
      }
      case '-': {
        next(ls);
        if (ls->current != '-') return '-';

        next(ls);
        if (ls->current == '[') {
          int sep = skip_sep(ls);
          luaZ_resetbuffer(ls->buff);
          if (sep >= 0) {
            read_long_string(ls, ((void*)0), sep);
            luaZ_resetbuffer(ls->buff);
            continue;
          }
        }

        while (!currIsNewline(ls) && ls->current != 128)
          next(ls);
        continue;
      }
      case '[': {
        int sep = skip_sep(ls);
        if (sep >= 0) {
          read_long_string(ls, seminfo, sep);
          return TK_STRING;
        }
        else if (sep == -1) return '[';
        else luaX_lexerror(ls, "invalid long string delimiter", TK_STRING);
      }
      case '=': {
        next(ls);
        if (ls->current != '=') return '=';
        else { next(ls); return TK_EQ; }
      }
      case '<': {
        next(ls);
        if (ls->current != '=') return '<';
        else { next(ls); return TK_LE; }
      }
      case '>': {
        next(ls);
        if (ls->current != '=') return '>';
        else { next(ls); return TK_GE; }
      }
      case '~': {
        next(ls);
        if (ls->current != '=') return '~';
        else { next(ls); return TK_NE; }
      }
      case '"':
      case '\'': {
        read_string(ls, ls->current, seminfo);
        return TK_STRING;
      }
      case '.': {
        save_and_next(ls);
        if (check_next(ls, ".")) {
          if (check_next(ls, "."))
            return TK_DOTS;
          else return TK_CONCAT;
        }
        else if (!isdigit(ls->current)) return '.';
        else {
          read_numeral(ls, seminfo);
          return TK_NUMBER;
        }
      }
      case 128: {
        return TK_EOS;
      }
      default: {
        if (isspace(ls->current)) {
          lua_assert(!currIsNewline(ls));
          next(ls);
          continue;
        }
        else if (isdigit(ls->current)) {
          read_numeral(ls, seminfo);
          return TK_NUMBER;
        }
        else if (isalpha(ls->current) || ls->current == '_') {

          TString *ts;
          int i;
          do {
            save_and_next(ls);
          } while (isalnum(ls->current) || ls->current == '_');

          save(ls, '\0');
          for (i = 0; i < NUM_RESERVED; i++)
            if (!strcmp(luaX_tokens[i], luaZ_buffer(ls->buff)))
              return i + FIRST_RESERVED;
          ts = luaX_newstring(ls, luaZ_buffer(ls->buff),
                                  luaZ_bufflen(ls->buff) - 1);
          seminfo->ts = ts;
          return TK_NAME;
        }
        else {
          int c = ls->current;
          next(ls);
          return c;
        }
      }
    }
  }
}

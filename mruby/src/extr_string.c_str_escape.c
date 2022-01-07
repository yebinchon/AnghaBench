
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;
typedef scalar_t__ mrb_bool ;
struct TYPE_3__ {int flags; } ;


 scalar_t__ ISPRINT (unsigned char) ;
 scalar_t__ IS_EVSTR (char const*,char const*) ;
 int MRB_STR_ASCII ;
 char* RSTRING_END (int ) ;
 char* RSTRING_PTR (int ) ;
 int RSTR_SET_ASCII_FLAG (TYPE_1__*) ;
 char* mrb_digitmap ;
 int mrb_str_cat (int *,int ,char*,int) ;
 int mrb_str_cat_lit (int *,int ,char*) ;
 int mrb_str_new_lit (int *,char*) ;
 TYPE_1__* mrb_str_ptr (int ) ;
 int utf8len (char const*,char const*) ;

__attribute__((used)) static mrb_value
str_escape(mrb_state *mrb, mrb_value str, mrb_bool inspect)
{
  const char *p, *pend;
  char buf[4];
  mrb_value result = mrb_str_new_lit(mrb, "\"");




  p = RSTRING_PTR(str); pend = RSTRING_END(str);
  for (;p < pend; p++) {
    unsigned char c, cc;
    c = *p;
    if (c == '"'|| c == '\\' || (c == '#' && IS_EVSTR(p+1, pend))) {
      buf[0] = '\\'; buf[1] = c;
      mrb_str_cat(mrb, result, buf, 2);
      continue;
    }
    if (ISPRINT(c)) {
      buf[0] = c;
      mrb_str_cat(mrb, result, buf, 1);
      continue;
    }
    switch (c) {
      case '\n': cc = 'n'; break;
      case '\r': cc = 'r'; break;
      case '\t': cc = 't'; break;
      case '\f': cc = 'f'; break;
      case '\013': cc = 'v'; break;
      case '\010': cc = 'b'; break;
      case '\007': cc = 'a'; break;
      case 033: cc = 'e'; break;
      default: cc = 0; break;
    }
    if (cc) {
      buf[0] = '\\';
      buf[1] = (char)cc;
      mrb_str_cat(mrb, result, buf, 2);
      continue;
    }
    else {
      buf[0] = '\\';
      buf[1] = 'x';
      buf[3] = mrb_digitmap[c % 16]; c /= 16;
      buf[2] = mrb_digitmap[c % 16];
      mrb_str_cat(mrb, result, buf, 4);
      continue;
    }
  }
  mrb_str_cat_lit(mrb, result, "\"");
  return result;
}

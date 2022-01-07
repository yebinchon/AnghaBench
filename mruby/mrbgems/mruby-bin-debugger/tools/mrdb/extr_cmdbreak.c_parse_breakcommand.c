
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int wcnt; char** words; TYPE_2__* dbg; } ;
typedef TYPE_1__ mrdb_state ;
typedef int mrb_state ;
struct TYPE_6__ {TYPE_4__* irep; scalar_t__ pc; } ;
typedef TYPE_2__ mrb_debug_context ;
typedef int mrb_debug_bptype ;
struct TYPE_7__ {scalar_t__ iseq; } ;


 int BREAK_ERR_MSG_BLANK ;
 char* BREAK_ERR_MSG_INVALIDCLASS ;
 char* BREAK_ERR_MSG_INVALIDMETHOD ;
 char* BREAK_ERR_MSG_INVALIDSTR ;
 int BREAK_ERR_MSG_RANGEOVER ;
 int ISLOWER (char) ;
 int ISUPPER (char) ;



 int STRTOUL (int,char*) ;
 int check_bptype (char*) ;
 char* mrb_debug_get_filename (int *,TYPE_4__*,scalar_t__) ;
 int printf (char*,char*) ;
 int puts (int ) ;
 char* strrchr (char*,char) ;

mrb_debug_bptype
parse_breakcommand(mrb_state *mrb, mrdb_state *mrdb, const char **file, uint32_t *line, char **cname, char **method)
{
  mrb_debug_context *dbg = mrdb->dbg;
  char *args;
  char *body;
  mrb_debug_bptype type;
  uint32_t l;

  if (mrdb->wcnt <= 1) {
    puts(BREAK_ERR_MSG_BLANK);
    return 128;
  }

  args = mrdb->words[1];
  if ((body = strrchr(args, ':')) == ((void*)0)) {
    body = args;
    type = check_bptype(body);
  }
  else {
    if (body == args) {
      printf(BREAK_ERR_MSG_INVALIDSTR, args);
      return 128;
    }
    *body = '\0';
    type = check_bptype(++body);
  }

  switch(type) {
    case 130:
      STRTOUL(l, body);
      if (l <= 65535) {
        *line = l;
        *file = (body == args)? mrb_debug_get_filename(mrb, dbg->irep, dbg->pc - dbg->irep->iseq): args;
      }
      else {
        puts(BREAK_ERR_MSG_RANGEOVER);
        type = 128;
      }
      break;
    case 129:
      if (body == args) {

        if (ISUPPER(*body)||ISLOWER(*body)||(*body == '_')) {
          *method = body;
          *cname = ((void*)0);
        }
        else {
          printf(BREAK_ERR_MSG_INVALIDMETHOD, args);
          type = 128;
        }
      }
      else {
        if (ISUPPER(*args)) {
          switch(*body) {
            case '@': case '$': case '?': case '.': case ',': case ':':
            case ';': case '#': case '\\': case '\'': case '\"':
            printf(BREAK_ERR_MSG_INVALIDMETHOD, body);
            type = 128;
            break;
          default:
            *method = body;
            *cname = args;
            break;
          }
        }
        else {
          printf(BREAK_ERR_MSG_INVALIDCLASS, args);
          type = 128;
        }
      }
      break;
    case 128:
    default:
      break;
  }

  return type;
}

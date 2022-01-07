
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_state ;


 int E_ARGUMENT_ERROR ;
 int FMODE_APPEND ;
 int FMODE_BINMODE ;
 int FMODE_CREATE ;
 int FMODE_READABLE ;
 int FMODE_READWRITE ;
 int FMODE_TRUNC ;
 int FMODE_WRITABLE ;
 int mrb_raisef (int *,int ,char*,char const*) ;

__attribute__((used)) static int
mrb_io_modestr_to_flags(mrb_state *mrb, const char *mode)
{
  int flags = 0;
  const char *m = mode;

  switch (*m++) {
    case 'r':
      flags |= FMODE_READABLE;
      break;
    case 'w':
      flags |= FMODE_WRITABLE | FMODE_CREATE | FMODE_TRUNC;
      break;
    case 'a':
      flags |= FMODE_WRITABLE | FMODE_APPEND | FMODE_CREATE;
      break;
    default:
      mrb_raisef(mrb, E_ARGUMENT_ERROR, "illegal access mode %s", mode);
  }

  while (*m) {
    switch (*m++) {
      case 'b':
        flags |= FMODE_BINMODE;
        break;
      case '+':
        flags |= FMODE_READWRITE;
        break;
      case ':':

      default:
        mrb_raisef(mrb, E_ARGUMENT_ERROR, "illegal access mode %s", mode);
    }
  }

  return flags;
}

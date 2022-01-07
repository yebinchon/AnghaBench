
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct r_magic {int type; int str_flags; int str_range; } ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ RMagic ;


 int CHAR_COMPACT_BLANK ;
 int CHAR_COMPACT_OPTIONAL_BLANK ;
 int CHAR_REGEX_OFFSET_START ;






 int REGEX_OFFSET_START ;
 int R_MAGIC_CHECK ;
 int STRING_COMPACT_BLANK ;
 int STRING_COMPACT_OPTIONAL_BLANK ;
 int STRING_DEFAULT_RANGE ;
 int file_magwarn (TYPE_1__*,char*,...) ;

__attribute__((used)) static int string_modifier_check(RMagic *ms, struct r_magic *m) {
 if ((ms->flags & R_MAGIC_CHECK) == 0) {
  return 0;
 }

 switch (m->type) {
 case 133:
 case 132:
  if (m->str_flags != 0) {
   file_magwarn(ms,
       "no modifiers allowed for 16-bit strings\n");
   return -1;
  }
  break;
 case 128:
 case 131:
  if ((m->str_flags & REGEX_OFFSET_START) != 0) {
   file_magwarn(ms,
       "'/%c' only allowed on regex and search\n",
       CHAR_REGEX_OFFSET_START);
   return -1;
  }
  break;
 case 129:
  if (m->str_range == 0) {
   file_magwarn(ms,
       "missing range; defaulting to %d\n",
                            STRING_DEFAULT_RANGE);
   m->str_range = STRING_DEFAULT_RANGE;
   return -1;
  }
  break;
 case 130:
  if ((m->str_flags & STRING_COMPACT_BLANK) != 0) {
   file_magwarn(ms, "'/%c' not allowed on regex\n",
       CHAR_COMPACT_BLANK);
   return -1;
  }
  if ((m->str_flags & STRING_COMPACT_OPTIONAL_BLANK) != 0) {
   file_magwarn(ms, "'/%c' not allowed on regex\n",
       CHAR_COMPACT_OPTIONAL_BLANK);
   return -1;
  }
  break;
 default:
  file_magwarn (ms, "coding error: m->type=%d\n",
      m->type);
  return -1;
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* end; char const* begin; } ;
typedef TYPE_1__ Subject ;
 int _re1_5_classmatch (char*,char const*) ;
 int _re1_5_namedclassmatch (char*,char const*) ;
 scalar_t__ inst_is_consumer (char) ;
 int re1_5_fatal (char*) ;
 int re1_5_stack_chk () ;

__attribute__((used)) static int
recursiveloop(char *pc, const char *sp, Subject *input, const char **subp, int nsubp)
{
 const char *old;
 int off;

 re1_5_stack_chk();

 for(;;) {
  if(inst_is_consumer(*pc)) {

   if(sp >= input->end)
    return 0;
  }
  switch(*pc++) {
  case 137:
   if(*sp != *pc++)
    return 0;
  case 139:
   sp++;
   continue;
  case 136:
  case 135:
   if (!_re1_5_classmatch(pc, sp))
    return 0;
   pc += *(unsigned char*)pc * 2 + 1;
   sp++;
   continue;
                case 131:
   if (!_re1_5_namedclassmatch(pc, sp))
    return 0;
   pc++;
   sp++;
   continue;
  case 132:
   return 1;
  case 133:
   off = (signed char)*pc++;
   pc = pc + off;
   continue;
  case 128:
   off = (signed char)*pc++;
   if(recursiveloop(pc, sp, input, subp, nsubp))
    return 1;
   pc = pc + off;
   continue;
  case 130:
   off = (signed char)*pc++;
   if(recursiveloop(pc + off, sp, input, subp, nsubp))
    return 1;
   continue;
  case 129:
   off = (unsigned char)*pc++;
   if(off >= nsubp) {
    continue;
   }
   old = subp[off];
   subp[off] = sp;
   if(recursiveloop(pc, sp, input, subp, nsubp))
    return 1;
   subp[off] = old;
   return 0;
  case 138:
   if(sp != input->begin)
    return 0;
   continue;
  case 134:
   if(sp != input->end)
    return 0;
   continue;
  }
  re1_5_fatal("recursiveloop");
 }
}

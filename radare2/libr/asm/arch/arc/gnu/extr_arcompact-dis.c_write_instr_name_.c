
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arcDisState {int instrBuffer; scalar_t__ nullifyMode; } ;


 char** condName ;
 char* cond_code_name (struct arcDisState*,int) ;
 int strcat (int ,char const*) ;
 int strncpy (int ,char const*,int) ;
 int * strstr (int ,char*) ;

__attribute__((used)) static void
write_instr_name_(struct arcDisState *state,
    const char *instrName,
    int cond,
    int condCodeIsPartOfName,
    int flag,
    int signExtend,
    int addrWriteBack,
    int directMem)
{
 if (!instrName) {
  return;
 }
 strncpy (state->instrBuffer, instrName, sizeof (state->instrBuffer) - 1);
 if (cond > 0) {
  int condlim = 0;
  const char *cc = 0;
  if (!condCodeIsPartOfName) {
   strcat (state->instrBuffer, ".");
  }
  condlim = 18;
  if (cond < condlim) {
   cc = condName[cond];
  } else {
   cc = cond_code_name (state, cond);
  }
  if (!cc) {
   cc = "???";
  }
  strcat (state->instrBuffer, cc);
    }
    if (flag) {
     strcat (state->instrBuffer, ".f");
    }
    if (state->nullifyMode) {
     if (strstr (state->instrBuffer, ".d") == ((void*)0)) {
      strcat (state->instrBuffer, ".d");
     }
    }
    if (signExtend) {
     strcat (state->instrBuffer, ".x");
    }
    switch (addrWriteBack) {
    case 1: strcat(state->instrBuffer, ".a"); break;
    case 2: strcat(state->instrBuffer, ".ab"); break;
    case 3: strcat(state->instrBuffer, ".as"); break;
  }
  if (directMem) {
   strcat (state->instrBuffer, ".di");
  }
}

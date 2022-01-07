
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nnn ;
typedef scalar_t__ int32 ;
struct TYPE_3__ {int state; char* buf; int count; } ;
typedef TYPE_1__ WORKSTATE ;


 scalar_t__ CLOSE ;
 scalar_t__ END ;
 scalar_t__ ERR ;
 scalar_t__ OPEN ;
 scalar_t__ OPR ;
 scalar_t__ VAL ;



 int errno ;
 long strtol (char*,int *,int ) ;

__attribute__((used)) static int32
gettoken(WORKSTATE *state, int32 *val)
{
 char nnn[16];
 int innn;

 *val = 0;

 innn = 0;
 while (1)
 {
  if (innn >= sizeof(nnn))
   return ERR;
  switch (state->state)
  {
   case 129:
    innn = 0;
    if ((*(state->buf) >= '0' && *(state->buf) <= '9') ||
     *(state->buf) == '-')
    {
     state->state = 130;
     nnn[innn++] = *(state->buf);
    }
    else if (*(state->buf) == '!')
    {
     (state->buf)++;
     *val = (int32) '!';
     return OPR;
    }
    else if (*(state->buf) == '(')
    {
     state->count++;
     (state->buf)++;
     return OPEN;
    }
    else if (*(state->buf) != ' ')
     return ERR;
    break;
   case 130:
    if (*(state->buf) >= '0' && *(state->buf) <= '9')
    {
     nnn[innn++] = *(state->buf);
    }
    else
    {
     long lval;

     nnn[innn] = '\0';
     errno = 0;
     lval = strtol(nnn, ((void*)0), 0);
     *val = (int32) lval;
     if (errno != 0 || (long) *val != lval)
      return ERR;
     state->state = 128;
     return (state->count && *(state->buf) == '\0')
      ? ERR : VAL;
    }
    break;
   case 128:
    if (*(state->buf) == '&' || *(state->buf) == '|')
    {
     state->state = 129;
     *val = (int32) *(state->buf);
     (state->buf)++;
     return OPR;
    }
    else if (*(state->buf) == ')')
    {
     (state->buf)++;
     state->count--;
     return (state->count < 0) ? ERR : CLOSE;
    }
    else if (*(state->buf) == '\0')
     return (state->count) ? ERR : END;
    else if (*(state->buf) != ' ')
     return ERR;
    break;
   default:
    return ERR;
    break;
  }
  (state->buf)++;
 }
}

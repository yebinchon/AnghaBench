
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int WORKSTATE ;



 int END ;

 int ERRCODE_STATEMENT_TOO_COMPLEX ;
 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;


 int STACKDEPTH ;

 int check_stack_depth () ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int gettoken (int *,int*) ;
 int pushquery (int *,int const,int) ;

__attribute__((used)) static int32
makepol(WORKSTATE *state)
{
 int32 val,
    type;
 int32 stack[STACKDEPTH];
 int32 lenstack = 0;


 check_stack_depth();

 while ((type = gettoken(state, &val)) != END)
 {
  switch (type)
  {
   case 128:
    pushquery(state, type, val);
    while (lenstack && (stack[lenstack - 1] == (int32) '&' ||
         stack[lenstack - 1] == (int32) '!'))
    {
     lenstack--;
     pushquery(state, 129, stack[lenstack]);
    }
    break;
   case 129:
    if (lenstack && val == (int32) '|')
     pushquery(state, 129, val);
    else
    {
     if (lenstack == STACKDEPTH)
      ereport(ERROR,
        (errcode(ERRCODE_STATEMENT_TOO_COMPLEX),
         errmsg("statement too complex")));
     stack[lenstack] = val;
     lenstack++;
    }
    break;
   case 130:
    if (makepol(state) == 131)
     return 131;
    while (lenstack && (stack[lenstack - 1] == (int32) '&' ||
         stack[lenstack - 1] == (int32) '!'))
    {
     lenstack--;
     pushquery(state, 129, stack[lenstack]);
    }
    break;
   case 132:
    while (lenstack)
    {
     lenstack--;
     pushquery(state, 129, stack[lenstack]);
    };
    return END;
    break;
   case 131:
   default:
    ereport(ERROR,
      (errcode(ERRCODE_SYNTAX_ERROR),
       errmsg("syntax error")));
    return 131;

  }
 }

 while (lenstack)
 {
  lenstack--;
  pushquery(state, 129, stack[lenstack]);
 };
 return END;
}

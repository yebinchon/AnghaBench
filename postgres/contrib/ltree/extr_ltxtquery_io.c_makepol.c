
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef int int32 ;
typedef int QPRS_STATE ;



 int END ;

 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;


 int STACKDEPTH ;

 int check_stack_depth () ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int gettoken_query (int *,int*,int*,char**,int *) ;
 int pushquery (int *,int const,int,int ,int ,int ) ;
 int pushval_asis (int *,int const,char*,int,int ) ;

__attribute__((used)) static int32
makepol(QPRS_STATE *state)
{
 int32 val = 0,
    type;
 int32 lenval = 0;
 char *strval = ((void*)0);
 int32 stack[STACKDEPTH];
 int32 lenstack = 0;
 uint16 flag = 0;


 check_stack_depth();

 while ((type = gettoken_query(state, &val, &lenval, &strval, &flag)) != END)
 {
  switch (type)
  {
   case 128:
    pushval_asis(state, 128, strval, lenval, flag);
    while (lenstack && (stack[lenstack - 1] == (int32) '&' ||
         stack[lenstack - 1] == (int32) '!'))
    {
     lenstack--;
     pushquery(state, 129, stack[lenstack], 0, 0, 0);
    }
    break;
   case 129:
    if (lenstack && val == (int32) '|')
     pushquery(state, 129, val, 0, 0, 0);
    else
    {
     if (lenstack == STACKDEPTH)

      elog(ERROR, "stack too short");
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
     pushquery(state, 129, stack[lenstack], 0, 0, 0);
    }
    break;
   case 132:
    while (lenstack)
    {
     lenstack--;
     pushquery(state, 129, stack[lenstack], 0, 0, 0);
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
  pushquery(state, 129, stack[lenstack], 0, 0, 0);
 };
 return END;
}

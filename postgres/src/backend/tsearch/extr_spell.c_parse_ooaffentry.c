
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERROR ;





 int elog (int ,char*,int) ;
 int get_nextfield (char**,char*) ;

__attribute__((used)) static int
parse_ooaffentry(char *str, char *type, char *flag, char *find,
     char *repl, char *mask)
{
 int state = 128;
 int fields_read = 0;
 bool valid = 0;

 *type = *flag = *find = *repl = *mask = '\0';

 while (*str)
 {
  switch (state)
  {
   case 128:
    valid = get_nextfield(&str, type);
    state = 131;
    break;
   case 131:
    valid = get_nextfield(&str, flag);
    state = 132;
    break;
   case 132:
    valid = get_nextfield(&str, find);
    state = 129;
    break;
   case 129:
    valid = get_nextfield(&str, repl);
    state = 130;
    break;
   case 130:
    valid = get_nextfield(&str, mask);
    state = -1;
    break;
   default:
    elog(ERROR, "unrecognized state in parse_ooaffentry: %d",
      state);
    break;
  }
  if (valid)
   fields_read++;
  else
   break;
  if (state < 0)
   break;
 }

 return fields_read;
}

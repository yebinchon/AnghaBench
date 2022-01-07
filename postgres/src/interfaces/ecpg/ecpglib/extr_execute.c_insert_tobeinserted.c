
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statement {char* command; int lineno; } ;


 scalar_t__ ecpg_alloc (scalar_t__,int ) ;
 int ecpg_free (char*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static bool
insert_tobeinserted(int position, int ph_len, struct statement *stmt, char *tobeinserted)
{
 char *newcopy;

 if (!(newcopy = (char *) ecpg_alloc(strlen(stmt->command)
          + strlen(tobeinserted)
          + 1, stmt->lineno)))
 {
  ecpg_free(tobeinserted);
  return 0;
 }

 strcpy(newcopy, stmt->command);
 strcpy(newcopy + position - 1, tobeinserted);





 strcat(newcopy,
     stmt->command
     + position
     + ph_len - 1);

 ecpg_free(stmt->command);
 stmt->command = newcopy;

 ecpg_free(tobeinserted);
 return 1;
}

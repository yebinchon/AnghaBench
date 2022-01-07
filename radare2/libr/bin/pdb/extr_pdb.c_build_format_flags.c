
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int R_PDB ;
typedef int EStates ;


 int convert_to_state (char*) ;
 int free (char*) ;
 scalar_t__ malloc (int ) ;
 int r_name_filter (char*,int) ;
 int sprintf (char*,char*,char*,char*) ;
 int strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 char* strtok (char*,char*) ;

__attribute__((used)) static int build_format_flags(R_PDB *pdb, char *type, int pos, char *res_field, char **name_field) {
 EStates curr_state;
 char *tmp = 0;
 char *name = 0;

 tmp = strtok (type, " ");
 while (tmp != ((void*)0)) {
  curr_state = convert_to_state (tmp);
  switch (curr_state) {
  case 136:
   break;
  case 133:
   if (res_field[pos] == 'p') {
    return 1;
   }
   res_field[pos] = 'p';
   break;
  case 130:
  case 131:
   res_field[pos] = '?';
   tmp = strtok (((void*)0), " ");
   name = (char *) malloc (strlen (tmp) + strlen (*name_field) + 1 + 2);
   if (!name) {
    return 0;
   }
   r_name_filter (tmp, -1);
   r_name_filter (*name_field, -1);
   strcpy (name, tmp);

   sprintf (name, "(%s)%s", tmp, *name_field);
   free (*name_field);
   *name_field = name;

   return 1;
  case 129:
   if (res_field[pos] == 'p') {
    return 1;
   }
   res_field[pos] = 'u';
   break;
  case 132:



   if (res_field[pos] == 'p') {
    return 1;
   }
   res_field[pos] = 'w';
   return 1;
  case 139:
   if (res_field[pos] == 'p') {
    return 1;
   }
   if (res_field[pos] == 'u') {
    res_field[pos] = 'b';
   } else {
    res_field[pos] = 'c';
   }
   return 1;
  case 137:
   if (res_field[pos] == 'p') {
    return 1;
   }
   res_field[pos] = 'i';
   return 1;
  case 135:
   if (res_field[pos] == 'p') {
    return 1;
   }
   res_field[pos] = 'w';
   break;
  case 138:
   if (res_field[pos] == 'p') {
    return 1;
   }
   res_field[pos] = 'E';
   tmp = strtok (((void*)0), " ");
   name = (char *) malloc (strlen (tmp) + strlen (*name_field) + 1 + 2);
   if (!name) {
    return 0;
   }
   strcpy (name, tmp);
   sprintf (name, "(%s)%s", tmp, *name_field);
   free (*name_field);
   *name_field = name;
   return 1;




  case 140:
   res_field[pos] = 'B';
   tmp = strtok (((void*)0), " ");
   name = (char *) malloc (strlen (tmp) + strlen (*name_field) + 1 + 2);
   if (!name) {
    return 0;
   }
   strcpy (name, tmp);
   sprintf (name, "(%s)%s", tmp, *name_field);
   free (*name_field);
   *name_field = name;
   return 1;
  case 128:
  case 141:
  case 134:
   res_field[pos] = 'p';
   return 1;
  default:
   if (((!strcmp (tmp, "to"))) ||
       (!strcmp (tmp, "nesttype")) ||
       (!strcmp (tmp, "mfunction")) ||
       (!strcmp (tmp, "proc")) ||
       (!strcmp (tmp, "arglist"))) {
    break;
   } else {

    res_field[pos] = 'A';
    return 0;
   }
  }

  tmp = strtok (((void*)0), " ");
 }

 return 1;
}

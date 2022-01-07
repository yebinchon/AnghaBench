
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ECPGttype { ____Placeholder_ECPGttype } ECPGttype ;
typedef int FILE ;


 int CHAR_BIT ;
 int ECPGt_NO_INDICATOR ;





 int ECPGt_descriptor ;


 int ECPGt_sqlda ;




 scalar_t__ atoi (char*) ;
 char* ecpg_type_name (int) ;
 int fprintf (int *,char*,...) ;
 int free (char*) ;
 char* get_type (int) ;
 scalar_t__ mm_alloc (scalar_t__) ;
 int sprintf (char*,char*,...) ;
 int strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void
ECPGdump_a_simple(FILE *o, const char *name, enum ECPGttype type,
      char *varcharsize,
      char *arrsize,
      const char *size,
      const char *prefix,
      int counter)
{
 if (type == ECPGt_NO_INDICATOR)
  fprintf(o, "\n\tECPGt_NO_INDICATOR, NULL , 0L, 0L, 0L, ");
 else if (type == ECPGt_descriptor)

  fprintf(o, "\n\tECPGt_descriptor, %s, 1L, 1L, 1L, ", name);
 else if (type == ECPGt_sqlda)
  fprintf(o, "\n\tECPGt_sqlda, &%s, 0L, 0L, 0L, ", name);
 else
 {
  char *variable = (char *) mm_alloc(strlen(name) + ((prefix == ((void*)0)) ? 0 : strlen(prefix)) + 4);
  char *offset = (char *) mm_alloc(strlen(name) + strlen("sizeof(struct varchar_)") + 1 + strlen(varcharsize) + sizeof(int) * CHAR_BIT * 10 / 3);
  char *struct_name;

  switch (type)
  {





   case 128:
   case 138:





    if (((atoi(arrsize) > 0) ||
      (atoi(arrsize) == 0 && strcmp(arrsize, "0") != 0)) &&
     size == ((void*)0))
     sprintf(variable, "(%s%s)", prefix ? prefix : "", name);
    else
     sprintf(variable, "&(%s%s)", prefix ? prefix : "", name);





    if (type == 128)
     struct_name = "struct varchar";
    else
     struct_name = "struct bytea";

    if (counter)
     sprintf(offset, "sizeof(%s_%d)", struct_name, counter);
    else
     sprintf(offset, "sizeof(%s)", struct_name);
    break;
   case 137:
   case 129:
   case 136:
   case 131:
    {
     char *sizeof_name = "char";





     if ((atoi(varcharsize) > 1 ||
       (atoi(arrsize) > 0) ||
       (atoi(varcharsize) == 0 && strcmp(varcharsize, "0") != 0) ||
       (atoi(arrsize) == 0 && strcmp(arrsize, "0") != 0))
      && size == ((void*)0))
     {
      sprintf(variable, "(%s%s)", prefix ? prefix : "", name);
      if ((type == 137 || type == 129) &&
       strcmp(varcharsize, "0") == 0)
      {




       sizeof_name = "char *";
      }
     }
     else
      sprintf(variable, "&(%s%s)", prefix ? prefix : "", name);

     sprintf(offset, "(%s)*sizeof(%s)", strcmp(varcharsize, "0") == 0 ? "1" : varcharsize, sizeof_name);
     break;
    }
   case 132:




    sprintf(variable, "&(%s%s)", prefix ? prefix : "", name);
    sprintf(offset, "sizeof(numeric)");
    break;
   case 133:




    sprintf(variable, "&(%s%s)", prefix ? prefix : "", name);
    sprintf(offset, "sizeof(interval)");
    break;
   case 134:




    sprintf(variable, "&(%s%s)", prefix ? prefix : "", name);
    sprintf(offset, "sizeof(date)");
    break;
   case 130:




    sprintf(variable, "&(%s%s)", prefix ? prefix : "", name);
    sprintf(offset, "sizeof(timestamp)");
    break;
   case 135:




    sprintf(variable, "\"%s\"", name);
    sprintf(offset, "strlen(\"%s\")", name);
    break;
   default:





    if (((atoi(arrsize) > 0) ||
      (atoi(arrsize) == 0 && strcmp(arrsize, "0") != 0)) &&
     size == ((void*)0))
     sprintf(variable, "(%s%s)", prefix ? prefix : "", name);
    else
     sprintf(variable, "&(%s%s)", prefix ? prefix : "", name);

    sprintf(offset, "sizeof(%s)", ecpg_type_name(type));
    break;
  }





  if (atoi(arrsize) < 0 && !size)
   strcpy(arrsize, "1");





  if (size == ((void*)0) || strlen(size) == 0)
   fprintf(o, "\n\t%s,%s,(long)%s,(long)%s,%s, ", get_type(type), variable, varcharsize, arrsize, offset);
  else
   fprintf(o, "\n\t%s,%s,(long)%s,(long)%s,%s, ", get_type(type), variable, varcharsize, arrsize, size);

  free(variable);
  free(offset);
 }
}

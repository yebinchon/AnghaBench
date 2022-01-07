
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_generic {char* name; } ;
typedef int Datum ;
typedef int ArrayType ;


 int* ARR_DIMS (int *) ;
 int Assert (char const*) ;
 int TEXTOID ;
 char* TextDatumGetCString (int ) ;
 int WARNING ;
 int array_ref (int *,int,int*,int,int,int,char,int*) ;
 int * array_set (int *,int,int*,int ,int,int,int,int,char) ;
 int * construct_array (int *,int,int ,int,int,char) ;
 struct config_generic* find_option (char const*,int,int ) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,size_t) ;
 int validate_option_array_item (char const*,int *,int) ;

ArrayType *
GUCArrayDelete(ArrayType *array, const char *name)
{
 struct config_generic *record;
 ArrayType *newarray;
 int i;
 int index;

 Assert(name);


 (void) validate_option_array_item(name, ((void*)0), 0);


 record = find_option(name, 0, WARNING);
 if (record)
  name = record->name;


 if (!array)
  return ((void*)0);

 newarray = ((void*)0);
 index = 1;

 for (i = 1; i <= ARR_DIMS(array)[0]; i++)
 {
  Datum d;
  char *val;
  bool isnull;

  d = array_ref(array, 1, &i,
       -1 ,
       -1 ,
       0 ,
       'i' ,
       &isnull);
  if (isnull)
   continue;
  val = TextDatumGetCString(d);


  if (strncmp(val, name, strlen(name)) == 0
   && val[strlen(name)] == '=')
   continue;


  if (newarray)
   newarray = array_set(newarray, 1, &index,
         d,
         0,
         -1 ,
         -1 ,
         0 ,
         'i' );
  else
   newarray = construct_array(&d, 1,
            TEXTOID,
            -1, 0, 'i');

  index++;
 }

 return newarray;
}

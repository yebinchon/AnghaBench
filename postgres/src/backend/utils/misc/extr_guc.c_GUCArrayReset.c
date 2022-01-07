
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;
typedef int ArrayType ;


 int* ARR_DIMS (int *) ;
 int TEXTOID ;
 char* TextDatumGetCString (int ) ;
 int array_ref (int *,int,int*,int,int,int,char,int*) ;
 int * array_set (int *,int,int*,int ,int,int,int,int,char) ;
 int * construct_array (int *,int,int ,int,int,char) ;
 int pfree (char*) ;
 char* strchr (char*,char) ;
 scalar_t__ superuser () ;
 scalar_t__ validate_option_array_item (char*,int *,int) ;

ArrayType *
GUCArrayReset(ArrayType *array)
{
 ArrayType *newarray;
 int i;
 int index;


 if (!array)
  return ((void*)0);


 if (superuser())
  return ((void*)0);

 newarray = ((void*)0);
 index = 1;

 for (i = 1; i <= ARR_DIMS(array)[0]; i++)
 {
  Datum d;
  char *val;
  char *eqsgn;
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

  eqsgn = strchr(val, '=');
  *eqsgn = '\0';


  if (validate_option_array_item(val, ((void*)0), 1))
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
  pfree(val);
 }

 return newarray;
}

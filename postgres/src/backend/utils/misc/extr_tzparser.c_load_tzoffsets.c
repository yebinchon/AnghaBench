
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tzEntry ;
typedef int TimeZoneAbbrevTable ;
typedef int MemoryContext ;


 int ALLOCSET_SMALL_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int * ConvertTimeZoneAbbrevs (int *,int) ;
 int CurrentMemoryContext ;
 int GUC_check_errmsg (char*) ;
 int MemoryContextDelete (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int ParseTzFile (char const*,int ,int **,int*,int ) ;
 scalar_t__ palloc (int) ;

TimeZoneAbbrevTable *
load_tzoffsets(const char *filename)
{
 TimeZoneAbbrevTable *result = ((void*)0);
 MemoryContext tmpContext;
 MemoryContext oldContext;
 tzEntry *array;
 int arraysize;
 int n;





 tmpContext = AllocSetContextCreate(CurrentMemoryContext,
            "TZParserMemory",
            ALLOCSET_SMALL_SIZES);
 oldContext = MemoryContextSwitchTo(tmpContext);


 arraysize = 128;
 array = (tzEntry *) palloc(arraysize * sizeof(tzEntry));


 n = ParseTzFile(filename, 0, &array, &arraysize, 0);


 if (n >= 0)
 {
  result = ConvertTimeZoneAbbrevs(array, n);
  if (!result)
   GUC_check_errmsg("out of memory");
 }


 MemoryContextSwitchTo(oldContext);
 MemoryContextDelete(tmpContext);

 return result;
}

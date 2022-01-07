
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ offset; scalar_t__ is_dst; int lineno; int filename; int * abbrev; int * zone; } ;
typedef TYPE_1__ tzEntry ;


 int GUC_check_errdetail (char*,int ,int ,int ,int ) ;
 int GUC_check_errmsg (char*,int *) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int memmove (TYPE_1__*,TYPE_1__*,int) ;
 scalar_t__ repalloc (TYPE_1__*,int) ;
 int strcmp (int *,int *) ;

__attribute__((used)) static int
addToArray(tzEntry **base, int *arraysize, int n,
     tzEntry *entry, bool override)
{
 tzEntry *arrayptr;
 int low;
 int high;






 arrayptr = *base;
 low = 0;
 high = n - 1;
 while (low <= high)
 {
  int mid = (low + high) >> 1;
  tzEntry *midptr = arrayptr + mid;
  int cmp;

  cmp = strcmp(entry->abbrev, midptr->abbrev);
  if (cmp < 0)
   high = mid - 1;
  else if (cmp > 0)
   low = mid + 1;
  else
  {



   if ((midptr->zone == ((void*)0) && entry->zone == ((void*)0) &&
     midptr->offset == entry->offset &&
     midptr->is_dst == entry->is_dst) ||
    (midptr->zone != ((void*)0) && entry->zone != ((void*)0) &&
     strcmp(midptr->zone, entry->zone) == 0))
   {

    return n;
   }
   if (override)
   {

    midptr->zone = entry->zone;
    midptr->offset = entry->offset;
    midptr->is_dst = entry->is_dst;
    return n;
   }

   GUC_check_errmsg("time zone abbreviation \"%s\" is multiply defined",
        entry->abbrev);
   GUC_check_errdetail("Entry in time zone file \"%s\", line %d, conflicts with entry in file \"%s\", line %d.",
        midptr->filename, midptr->lineno,
        entry->filename, entry->lineno);
   return -1;
  }
 }




 if (n >= *arraysize)
 {
  *arraysize *= 2;
  *base = (tzEntry *) repalloc(*base, *arraysize * sizeof(tzEntry));
 }

 arrayptr = *base + low;

 memmove(arrayptr + 1, arrayptr, (n - low) * sizeof(tzEntry));

 memcpy(arrayptr, entry, sizeof(tzEntry));

 return n + 1;
}

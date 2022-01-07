
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PageData ;


 int MATCH_THRESHOLD ;
 int Min (int,int) ;
 int writeFragment (int *,int,int,char const*) ;

__attribute__((used)) static void
computeRegionDelta(PageData *pageData,
       const char *curpage, const char *targetpage,
       int targetStart, int targetEnd,
       int validStart, int validEnd)
{
 int i,
    loopEnd,
    fragmentBegin = -1,
    fragmentEnd = -1;


 if (validStart > targetStart)
 {
  fragmentBegin = targetStart;
  targetStart = validStart;
 }


 loopEnd = Min(targetEnd, validEnd);


 i = targetStart;
 while (i < loopEnd)
 {
  if (curpage[i] != targetpage[i])
  {

   if (fragmentBegin < 0)
    fragmentBegin = i;

   fragmentEnd = -1;

   i++;
   while (i < loopEnd && curpage[i] != targetpage[i])
    i++;
   if (i >= loopEnd)
    break;
  }


  fragmentEnd = i;





  i++;
  while (i < loopEnd && curpage[i] == targetpage[i])
   i++;
  if (fragmentBegin >= 0 && i - fragmentEnd > MATCH_THRESHOLD)
  {
   writeFragment(pageData, fragmentBegin,
        fragmentEnd - fragmentBegin,
        targetpage + fragmentBegin);
   fragmentBegin = -1;
   fragmentEnd = -1;
  }
 }


 if (loopEnd < targetEnd)
 {
  if (fragmentBegin < 0)
   fragmentBegin = loopEnd;
  fragmentEnd = targetEnd;
 }


 if (fragmentBegin >= 0)
 {
  if (fragmentEnd < 0)
   fragmentEnd = targetEnd;
  writeFragment(pageData, fragmentBegin,
       fragmentEnd - fragmentBegin,
       targetpage + fragmentBegin);
 }
}

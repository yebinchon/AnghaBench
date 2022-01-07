
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_8__ {int * children; } ;
typedef int JsonbValue ;
typedef TYPE_1__ JsonbContainer ;
typedef int JEntry ;


 int Assert (int ) ;
 int JsonContainerIsObject (TYPE_1__*) ;
 int JsonContainerSize (TYPE_1__*) ;
 int fillJsonbValue (TYPE_1__*,int,char*,int,int *) ;
 int getJsonbLength (TYPE_1__*,int) ;
 int getJsonbOffset (TYPE_1__*,int) ;
 int lengthCompareJsonbString (char const*,int,char const*,int) ;
 int * palloc (int) ;

JsonbValue *
getKeyJsonValueFromContainer(JsonbContainer *container,
        const char *keyVal, int keyLen, JsonbValue *res)
{
 JEntry *children = container->children;
 int count = JsonContainerSize(container);
 char *baseAddr;
 uint32 stopLow,
    stopHigh;

 Assert(JsonContainerIsObject(container));


 if (count <= 0)
  return ((void*)0);





 baseAddr = (char *) (children + count * 2);
 stopLow = 0;
 stopHigh = count;
 while (stopLow < stopHigh)
 {
  uint32 stopMiddle;
  int difference;
  const char *candidateVal;
  int candidateLen;

  stopMiddle = stopLow + (stopHigh - stopLow) / 2;

  candidateVal = baseAddr + getJsonbOffset(container, stopMiddle);
  candidateLen = getJsonbLength(container, stopMiddle);

  difference = lengthCompareJsonbString(candidateVal, candidateLen,
             keyVal, keyLen);

  if (difference == 0)
  {

   int index = stopMiddle + count;

   if (!res)
    res = palloc(sizeof(JsonbValue));

   fillJsonbValue(container, index, baseAddr,
         getJsonbOffset(container, index),
         res);

   return res;
  }
  else
  {
   if (difference < 0)
    stopLow = stopMiddle + 1;
   else
    stopHigh = stopMiddle;
  }
 }


 return ((void*)0);
}

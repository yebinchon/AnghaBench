
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SharedInvalidationMessage ;


 int FIRSTCHUNKSIZE ;
 int * SharedInvalidMessagesArray ;
 int maxSharedInvalidMessagesArray ;
 int memcpy (int *,int const*,int) ;
 int numSharedInvalidMessagesArray ;
 int * palloc (int) ;
 int * repalloc (int *,int) ;

__attribute__((used)) static void
MakeSharedInvalidMessagesArray(const SharedInvalidationMessage *msgs, int n)
{



 if (SharedInvalidMessagesArray == ((void*)0))
 {
  maxSharedInvalidMessagesArray = FIRSTCHUNKSIZE;
  numSharedInvalidMessagesArray = 0;





  SharedInvalidMessagesArray = palloc(maxSharedInvalidMessagesArray
           * sizeof(SharedInvalidationMessage));
 }

 if ((numSharedInvalidMessagesArray + n) > maxSharedInvalidMessagesArray)
 {
  while ((numSharedInvalidMessagesArray + n) > maxSharedInvalidMessagesArray)
   maxSharedInvalidMessagesArray *= 2;

  SharedInvalidMessagesArray = repalloc(SharedInvalidMessagesArray,
             maxSharedInvalidMessagesArray
             * sizeof(SharedInvalidationMessage));
 }




 memcpy(SharedInvalidMessagesArray + numSharedInvalidMessagesArray,
     msgs, n * sizeof(SharedInvalidationMessage));
 numSharedInvalidMessagesArray += n;
}

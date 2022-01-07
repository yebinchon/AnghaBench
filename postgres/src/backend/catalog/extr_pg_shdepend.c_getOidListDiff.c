
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;



__attribute__((used)) static void
getOidListDiff(Oid *list1, int *nlist1, Oid *list2, int *nlist2)
{
 int in1,
    in2,
    out1,
    out2;

 in1 = in2 = out1 = out2 = 0;
 while (in1 < *nlist1 && in2 < *nlist2)
 {
  if (list1[in1] == list2[in2])
  {

   in1++;
   in2++;
  }
  else if (list1[in1] < list2[in2])
  {

   list1[out1++] = list1[in1++];
  }
  else
  {

   list2[out2++] = list2[in2++];
  }
 }


 while (in1 < *nlist1)
 {
  list1[out1++] = list1[in1++];
 }


 while (in2 < *nlist2)
 {
  list2[out2++] = list2[in2++];
 }

 *nlist1 = out1;
 *nlist2 = out2;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;


 int assert (int) ;

__attribute__((used)) static inline DWORD DSOUND_BufPtrDiff(DWORD buflen, DWORD ptr1, DWORD ptr2)
{

 assert(ptr1 < buflen);
 assert(ptr2 < buflen);
 if (ptr1 >= ptr2) {
  return ptr1 - ptr2;
 } else {
  return buflen + ptr1 - ptr2;
 }
}

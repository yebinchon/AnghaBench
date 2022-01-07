
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int binary_search(unsigned int *A, int key, int imin, int imax) {
 int imid;


 while (imin < imax) {
  imid = (imin + imax) / 2;
  if (A[imid] < key) {
   imin = imid + 1;
  } else {
   imax = imid;
  }
 }





 if ((imax == imin) && (A[imin] == key)) {
  return imin;
 }
 return -1;
}

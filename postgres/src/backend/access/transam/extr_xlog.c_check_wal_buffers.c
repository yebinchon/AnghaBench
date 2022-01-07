
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GucSource ;


 int XLOGChooseNumBuffers () ;
 int XLOGbuffers ;

bool
check_wal_buffers(int *newval, void **extra, GucSource source)
{



 if (*newval == -1)
 {




  if (XLOGbuffers == -1)
   return 1;


  *newval = XLOGChooseNumBuffers();
 }
 if (*newval < 4)
  *newval = 4;

 return 1;
}

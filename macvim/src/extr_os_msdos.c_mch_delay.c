
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long BIOSTICK ;
 int WaitForChar (long) ;
 long biostime (int ,long) ;

void
mch_delay(
    long msec,
    int ignoreinput)
{
    long starttime;

    if (ignoreinput)
    {





 starttime = biostime(0, 0L);
 while (biostime(0, 0L) < starttime + msec / BIOSTICK)
     ;
    }
    else
 WaitForChar(msec);
}

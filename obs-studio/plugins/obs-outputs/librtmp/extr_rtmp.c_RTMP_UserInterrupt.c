
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RTMP_ctrlC ;
 int TRUE ;

void
RTMP_UserInterrupt()
{
    RTMP_ctrlC = TRUE;
}

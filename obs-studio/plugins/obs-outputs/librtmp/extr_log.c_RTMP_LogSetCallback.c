
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RTMP_LogCallback ;


 int * cb ;

void RTMP_LogSetCallback(RTMP_LogCallback *cbp)
{
    cb = cbp;
}

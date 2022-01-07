
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;
typedef int BYTE ;
typedef int BOOL ;


 int SR98_IOCTL_BEEP ;
 int sr98_send_receive (int ,int ,int*,int,int *,int *) ;

BOOL sr98_beep(HANDLE hFile, BYTE duration)
{
 if(duration > 9)
  duration = 9;
 return sr98_send_receive(hFile, SR98_IOCTL_BEEP, &duration, 1, ((void*)0), ((void*)0));
}

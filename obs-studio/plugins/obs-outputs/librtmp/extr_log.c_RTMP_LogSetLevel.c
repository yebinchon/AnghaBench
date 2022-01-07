
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RTMP_LogLevel ;


 int RTMP_debuglevel ;

void RTMP_LogSetLevel(RTMP_LogLevel level)
{
    RTMP_debuglevel = level;
}

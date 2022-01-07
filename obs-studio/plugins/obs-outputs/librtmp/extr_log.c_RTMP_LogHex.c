
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int RTMP_Log (int,char*,char*) ;
 scalar_t__ RTMP_debuglevel ;
 void** hexdig ;

void RTMP_LogHex(int level, const uint8_t *data, unsigned long len)
{
    unsigned long i;
    char line[50], *ptr;

    if ( level > (int)RTMP_debuglevel )
        return;

    ptr = line;

    for(i=0; i<len; i++)
    {
        *ptr++ = hexdig[0x0f & (data[i] >> 4)];
        *ptr++ = hexdig[0x0f & data[i]];
        if ((i & 0x0f) == 0x0f)
        {
            *ptr = '\0';
            ptr = line;
            RTMP_Log(level, "%s", line);
        }
        else
        {
            *ptr++ = ' ';
        }
    }
    if (i & 0x0f)
    {
        *ptr = '\0';
        RTMP_Log(level, "%s", line);
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int line ;


 int BP_GRAPH ;
 int BP_LEN ;
 int BP_OFFSET ;
 int RTMP_Log (int,char*,char*) ;
 scalar_t__ RTMP_debuglevel ;
 char* hexdig ;
 scalar_t__ isprint (int const) ;
 int memset (char*,char,int) ;

void RTMP_LogHexString(int level, const uint8_t *data, unsigned long len)
{



    char line[80];
    unsigned long i;

    if ( !data || level > (int)RTMP_debuglevel )
        return;


    line[0] = '\0';

    for ( i = 0 ; i < len ; i++ )
    {
        int n = i % 16;
        unsigned off;

        if( !n )
        {
            if( i ) RTMP_Log( level, "%s", line );
            memset( line, ' ', sizeof(line)-2 );
            line[sizeof(line)-2] = '\0';

            off = i % 0x0ffffU;

            line[2] = hexdig[0x0f & (off >> 12)];
            line[3] = hexdig[0x0f & (off >> 8)];
            line[4] = hexdig[0x0f & (off >> 4)];
            line[5] = hexdig[0x0f & off];
            line[6] = ':';
        }

        off = 9 + n*3 + ((n >= 8)?1:0);
        line[off] = hexdig[0x0f & ( data[i] >> 4 )];
        line[off+1] = hexdig[0x0f & data[i]];

        off = 60 + n + ((n >= 8)?1:0);

        if ( isprint( data[i] ))
        {
            line[60 + n] = data[i];
        }
        else
        {
            line[60 + n] = '.';
        }
    }

    RTMP_Log( level, "%s", line );
}

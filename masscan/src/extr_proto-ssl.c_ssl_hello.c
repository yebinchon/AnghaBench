
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int uint64_t ;


 unsigned char* MALLOC (size_t) ;
 int memcpy (unsigned char*,void const*,size_t) ;
 scalar_t__ siphash24 (unsigned int*,int,int const*) ;
 int time (int ) ;

char *
ssl_hello(const void *templ)
{
    unsigned char *px = (unsigned char *)templ;
    unsigned now = (unsigned)time(0);
    unsigned i;


    size_t template_size = (px[3]<<8 | px[4]) + 5;


    px = MALLOC(template_size);
    memcpy(px, templ, template_size);


    px[11] = (unsigned char)(now>>24);
    px[12] = (unsigned char)(now>>16);
    px[13] = (unsigned char)(now>> 8);
    px[14] = (unsigned char)(now>> 0);


    for (i=4; i<32; i++) {
        static const uint64_t key[2] = {0,0};
        unsigned val = i+now;
        unsigned char c = (unsigned char)siphash24(&val, sizeof(val), key);

        px[11+i] = c;
    }

    return (char*)px;
}

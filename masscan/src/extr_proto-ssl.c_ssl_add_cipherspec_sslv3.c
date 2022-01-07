
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* REALLOC (void*,int) ;
 int memmove (unsigned char*,unsigned char*,size_t) ;
 int ssl_hello_size (void*) ;

__attribute__((used)) static char *
ssl_add_cipherspec_sslv3(void *templ, unsigned cipher_spec, unsigned is_append)
{
    unsigned char *px;
    size_t len0 = ssl_hello_size(templ);
    size_t len1;
    size_t len1b;
    size_t len2;
    size_t offset;
    size_t offset2;


    px = REALLOC(templ, ssl_hello_size(templ) + 2);


    len1 = px[3] << 8 | px[4];
    len1b = px[6] << 16 | px[7] << 8 | px[8];



    offset = 43;
    offset += px[offset] + 1;


    len2 = px[offset] << 8 | px[offset+1];
    offset2 = offset+2;
    if (is_append) {

        memmove(px + offset2 + len2 + 2,
                px + offset2 + len2,
                len0 - (offset2 + len2));
        px[offset2 + len2 ] = (unsigned char)(cipher_spec>>8);
        px[offset2 + len2 + 1] = (unsigned char)(cipher_spec>>0);
    } else {

        memmove(px + offset2 + 2,
                px + offset2,
                len0 - offset2);
        px[offset2 ] = (unsigned char)(cipher_spec>>8);
        px[offset2 + 1] = (unsigned char)(cipher_spec>>0);
    }


    len2 += 2;
    px[offset ] = (unsigned char)(len2>>8);
    px[offset + 1] = (unsigned char)(len2>>0);
    len1b += 2;
    px[6] = (unsigned char)(len1b>>16);
    px[7] = (unsigned char)(len1b>> 8);
    px[8] = (unsigned char)(len1b>> 0);
    len1 += 2;
    px[3] = (unsigned char)(len1>>8);
    px[4] = (unsigned char)(len1>>0);

    return (char*)px;
}

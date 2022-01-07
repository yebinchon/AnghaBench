
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_chmap {int dummy; } ;


 unsigned int AV_RB24 (unsigned char*) ;
 int parse_vorbis_chmap (struct mp_chmap*,unsigned char*,unsigned int) ;

__attribute__((used)) static void parse_flac_chmap(struct mp_chmap *channels, unsigned char *data,
                             int size)
{

    if (size < 4)
        return;
    data += 4;
    size -= 4;

    while (size >= 4) {
        unsigned btype = data[0] & 0x7F;
        unsigned bsize = AV_RB24(data + 1);
        data += 4;
        size -= 4;
        if (bsize > size)
            return;
        if (btype == 4)
            parse_vorbis_chmap(channels, data, bsize);
        data += bsize;
        size -= bsize;
    }
}

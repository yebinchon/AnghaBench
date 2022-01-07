
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct BannerOutput {scalar_t__ length; scalar_t__ max_length; scalar_t__ banner; } ;


 size_t AUTO_LEN ;
 struct BannerOutput* banout_expand (struct BannerOutput*,struct BannerOutput*) ;
 struct BannerOutput* banout_find_proto (struct BannerOutput*,unsigned int) ;
 struct BannerOutput* banout_new_proto (struct BannerOutput*,unsigned int) ;
 int memcpy (scalar_t__,void const*,size_t) ;
 size_t strlen (char const*) ;

void
banout_append(struct BannerOutput *banout, unsigned proto,
              const void *px, size_t length)
{
    struct BannerOutput *p;

    if (length == AUTO_LEN)
        length = strlen((const char*)px);






    p = banout_find_proto(banout, proto);
    if (p == ((void*)0)) {
        p = banout_new_proto(banout, proto);
    }





    while (p->length + length >= p->max_length) {
        p = banout_expand(banout, p);
    }






    memcpy(p->banner + p->length, px, length);
    p->length = (unsigned)(p->length + length);

}

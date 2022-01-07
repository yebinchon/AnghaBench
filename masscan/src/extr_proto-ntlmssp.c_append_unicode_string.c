
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct BannerOutput {int dummy; } ;


 int AUTO_LEN ;
 int PROTO_SMB ;
 int banout_append (struct BannerOutput*,int ,char const*,int ) ;
 int banout_append_char (struct BannerOutput*,unsigned int,char) ;
 int banout_append_unicode (struct BannerOutput*,int ,unsigned int) ;

__attribute__((used)) static void
append_unicode_string(struct BannerOutput *banout, unsigned proto, const char *name, const unsigned char *value, size_t value_length)
{
    unsigned j;
    banout_append_char(banout, proto, ' ');
    banout_append(banout, PROTO_SMB, name, AUTO_LEN);
    banout_append_char(banout, proto, '=');
    for (j=0; j<value_length; j += 2) {
        unsigned c = value[j] | value[j+1]<<8;
        banout_append_unicode(banout, PROTO_SMB, c);
    }
}

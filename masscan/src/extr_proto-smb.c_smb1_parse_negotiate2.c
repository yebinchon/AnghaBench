
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int byte_state; size_t byte_count; size_t byte_offset; } ;
struct TYPE_4__ {TYPE_1__ smb1; } ;
struct SMBSTUFF {TYPE_2__ hdr; } ;
typedef unsigned char const BannerOutput ;


 int UNUSEDPARM (unsigned char const*) ;

__attribute__((used)) static size_t
smb1_parse_negotiate2(struct SMBSTUFF *smb, const unsigned char *px, size_t offset, size_t max, struct BannerOutput *banout)
{
    size_t original_offset = offset;
    unsigned state = smb->hdr.smb1.byte_state;

    UNUSEDPARM(banout); UNUSEDPARM(px);

    if (max > offset + (smb->hdr.smb1.byte_count - smb->hdr.smb1.byte_offset))
        max = offset + (smb->hdr.smb1.byte_count - smb->hdr.smb1.byte_offset);

    for (;offset<max; offset++)
        switch (state) {
            case 0:
                state = 1;
                break;
            default:
                break;
        }

    smb->hdr.smb1.byte_state = (unsigned short)state;
    smb->hdr.smb1.byte_offset += (unsigned short)(offset - original_offset);
    return offset - original_offset;
}

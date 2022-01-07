
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t length; size_t orig_len; unsigned char* data; } ;
typedef TYPE_1__ SSL3_RECORD ;


 int EVP_MAX_MD_SIZE ;
 unsigned char constant_time_eq_8_s (size_t,size_t) ;
 size_t constant_time_eq_s (size_t,size_t) ;
 size_t constant_time_lt_s (size_t,size_t) ;
 int memset (unsigned char*,int ,size_t) ;
 int ossl_assert (int) ;

int ssl3_cbc_copy_mac(unsigned char *out,
                       const SSL3_RECORD *rec, size_t md_size)
{




    unsigned char rotated_mac[EVP_MAX_MD_SIZE];





    size_t mac_end = rec->length;
    size_t mac_start = mac_end - md_size;
    size_t in_mac;




    size_t scan_start = 0;
    size_t i, j;
    size_t rotate_offset;

    if (!ossl_assert(rec->orig_len >= md_size
                     && md_size <= EVP_MAX_MD_SIZE))
        return 0;






    if (rec->orig_len > md_size + 255 + 1)
        scan_start = rec->orig_len - (md_size + 255 + 1);

    in_mac = 0;
    rotate_offset = 0;
    memset(rotated_mac, 0, md_size);
    for (i = scan_start, j = 0; i < rec->orig_len; i++) {
        size_t mac_started = constant_time_eq_s(i, mac_start);
        size_t mac_ended = constant_time_lt_s(i, mac_end);
        unsigned char b = rec->data[i];

        in_mac |= mac_started;
        in_mac &= mac_ended;
        rotate_offset |= j & mac_started;
        rotated_mac[j++] |= b & in_mac;
        j &= constant_time_lt_s(j, md_size);
    }
    memset(out, 0, md_size);
    rotate_offset = md_size - rotate_offset;
    rotate_offset &= constant_time_lt_s(rotate_offset, md_size);
    for (i = 0; i < md_size; i++) {
        for (j = 0; j < md_size; j++)
            out[j] |= rotated_mac[i] & constant_time_eq_8_s(j, rotate_offset);
        rotate_offset++;
        rotate_offset &= constant_time_lt_s(rotate_offset, md_size);
    }


    return 1;
}

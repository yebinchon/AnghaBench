
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int utf8_char_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_5__ {unsigned int cc_size; scalar_t__* cc_data; int timestamp; } ;
typedef TYPE_1__ scc_t ;


 TYPE_1__* scc_relloc (TYPE_1__*,unsigned int) ;
 int scc_time_to_timestamp (int,int,int,int) ;
 int sscanf (int const*,char*,int*,...) ;
 size_t utf8_line_length (int const*) ;
 size_t utf8_trimmed_length (int const*,size_t) ;

size_t scc_to_608(scc_t** scc, const utf8_char_t* data)
{
    size_t llen, size = 0;
    int v1 = 0, v2 = 0, hh = 0, mm = 0, ss = 0, ff = 0, cc_data = 0;

    if (0 == data) {
        return 0;
    }

    if ((*scc)) {
        (*scc)->cc_size = 0;
    }


    if (2 == sscanf(data, "Scenarist_SCC V%1d.%1d", &v1, &v2)) {
        data += 18, size += 18;

        if (1 != v1 || 0 != v2) {
            return 0;
        }
    }


    for (;;) {
        llen = utf8_line_length(data);

        if (0 == llen || 0 != utf8_trimmed_length(data, llen)) {
            break;
        }

        data += llen;
        size += llen;
    }

    if (4 == sscanf(data, "%2d:%2d:%2d%*1[:;]%2d", &hh, &mm, &ss, &ff)) {
        data += 12, size += 12;

        llen = utf8_line_length(data);
        llen = utf8_trimmed_length(data, llen);
        unsigned int max_cc_count = 1 + ((unsigned int)llen / 5);
        (*scc) = scc_relloc((*scc), max_cc_count * 15 / 10);
        (*scc)->timestamp = scc_time_to_timestamp(hh, mm, ss, ff);
        (*scc)->cc_size = 0;

        while ((*scc)->cc_size < max_cc_count && 1 == sscanf(data, "%04x", &cc_data)) {
            (*scc)->cc_data[(*scc)->cc_size] = (uint16_t)cc_data;
            (*scc)->cc_size += 1;
            data += 5, size += 5;
        }
    }

    return size;
}

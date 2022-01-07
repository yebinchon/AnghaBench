
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int timestamp; } ;
typedef TYPE_2__ sei_t ;
struct TYPE_13__ {unsigned int cc_size; int * cc_data; } ;
typedef TYPE_3__ scc_t ;
typedef int libcaption_stauts_t ;
struct TYPE_11__ {int cc_count; } ;
struct TYPE_14__ {TYPE_1__ user_data; } ;
typedef TYPE_4__ cea708_t ;


 int LIBCAPTION_OK ;
 int cc_type_ntsc_cc_field_1 ;
 int cea708_add_cc_data (TYPE_4__*,int,int ,int ) ;
 int cea708_init (TYPE_4__*,int ) ;
 int sei_append_708 (TYPE_2__*,TYPE_4__*) ;

libcaption_stauts_t sei_from_scc(sei_t* sei, const scc_t* scc)
{
    unsigned int i;
    cea708_t cea708;
    cea708_init(&cea708, sei->timestamp);

    for (i = 0; i < scc->cc_size; ++i) {
        if (31 == cea708.user_data.cc_count) {
            sei_append_708(sei, &cea708);
        }

        cea708_add_cc_data(&cea708, 1, cc_type_ntsc_cc_field_1, scc->cc_data[i]);
    }

    if (0 != cea708.user_data.cc_count) {
        sei_append_708(sei, &cea708);
    }

    return LIBCAPTION_OK;
}

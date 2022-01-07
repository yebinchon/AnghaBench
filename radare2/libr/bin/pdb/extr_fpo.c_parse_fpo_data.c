
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bit_values; } ;
struct TYPE_5__ {TYPE_1__ bit_values; int cdw_params; int cdw_locals; int cb_proc_size; int ul_off_start; } ;
typedef TYPE_2__ SFPO_DATA ;


 int READ2 (int,int,int ,char*,int ) ;
 int READ4 (int,int,int ,char*,int ) ;
 int SWAP_UINT16 (int ) ;
 int ut16 ;
 int ut32 ;

__attribute__((used)) static int parse_fpo_data(char *data, int data_size, int *read_bytes, SFPO_DATA *fpo_data)
{
 int curr_read_bytes = *read_bytes;

 READ4(*read_bytes, data_size, fpo_data->ul_off_start, data, ut32);
 READ4(*read_bytes, data_size, fpo_data->cb_proc_size, data, ut32);
 READ4(*read_bytes, data_size, fpo_data->cdw_locals, data, ut32);
 READ2(*read_bytes, data_size, fpo_data->cdw_params, data, ut16);
 READ2(*read_bytes, data_size, fpo_data->bit_values.bit_values, data, ut16);

 fpo_data->bit_values.bit_values = SWAP_UINT16(fpo_data->bit_values.bit_values);

 return (*read_bytes - curr_read_bytes);
}

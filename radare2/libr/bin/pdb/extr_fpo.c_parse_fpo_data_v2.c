
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SFPO_DATA_V2 ;


 int memcpy (int *,char*,int) ;

__attribute__((used)) static int parse_fpo_data_v2(char *data, int data_size, int *read_bytes, SFPO_DATA_V2 *fpo_data)
{
 int curr_read_bytes = *read_bytes;

 memcpy(fpo_data, data, sizeof(SFPO_DATA_V2));
 *read_bytes += sizeof(SFPO_DATA_V2);

 return (*read_bytes - curr_read_bytes);
}

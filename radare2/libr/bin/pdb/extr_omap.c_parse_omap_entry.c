
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SOmapEntry ;


 int memcpy (int *,char*,int) ;

__attribute__((used)) static int parse_omap_entry(char *data, int data_size, int *read_bytes, SOmapEntry *omap_entry) {
 int curr_read_bytes = *read_bytes;
 memcpy (omap_entry, data, sizeof (SOmapEntry));
 *read_bytes += sizeof (SOmapEntry);
 return (*read_bytes - curr_read_bytes);
}

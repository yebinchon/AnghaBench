
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ut8 ;
typedef scalar_t__ ut64 ;
typedef size_t ut32 ;
struct r_bin_mdmp_obj {scalar_t__ size; int b; TYPE_1__* hdr; int kv; } ;
struct minidump_directory {int dummy; } ;
struct TYPE_2__ {scalar_t__ stream_directory_rva; size_t number_of_streams; } ;


 size_t R_MIN (size_t,scalar_t__) ;
 int eprintf (char*,size_t) ;
 int r_bin_mdmp_init_directory_entry (struct r_bin_mdmp_obj*,struct minidump_directory*) ;
 int r_buf_read_at (int ,scalar_t__,int *,int) ;
 int sdb_num_set (int ,char*,scalar_t__,int ) ;
 int sdb_set (int ,char*,char*,int ) ;

__attribute__((used)) static bool r_bin_mdmp_init_directory(struct r_bin_mdmp_obj *obj) {
 ut32 i;
 struct minidump_directory entry;

 sdb_num_set (obj->kv, "mdmp_directory.offset",
   obj->hdr->stream_directory_rva, 0);
 sdb_set (obj->kv, "mdmp_directory.format", "[4]E? "
   "(mdmp_stream_type)StreamType "
   "(mdmp_location_descriptor)Location", 0);

 ut64 rvadir = obj->hdr->stream_directory_rva;
 ut64 bytes_left = rvadir < obj->size ? obj->size - rvadir : 0;
 size_t max_entries = R_MIN (obj->hdr->number_of_streams, bytes_left / sizeof (struct minidump_directory));
 if (max_entries < obj->hdr->number_of_streams) {
  eprintf ("[ERROR] Number of streams = %u is greater than is supportable by bin size\n",
           obj->hdr->number_of_streams);
 }

 for (i = 0; i < max_entries; i++) {
  ut32 delta = i * sizeof (struct minidump_directory);
  int r = r_buf_read_at (obj->b, rvadir + delta, (ut8*) &entry, sizeof (struct minidump_directory));
  if (r) {
   if (!r_bin_mdmp_init_directory_entry (obj, &entry)) {
    return 0;
   }
  }
 }

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sdb; } ;
typedef int Sdb ;
typedef TYPE_1__ RBinFile ;


 int * sdb_new0 () ;
 int sdb_ns_set (int ,char*,int *) ;
 int sdb_num_set (int *,char*,int,int ) ;
 int sdb_set (int *,char*,char*,int ) ;

__attribute__((used)) static Sdb *get_sdb(RBinFile *bf) {
 Sdb *kv = sdb_new0 ();
 sdb_num_set (kv, "nso_start.offset", 0, 0);
 sdb_num_set (kv, "nso_start.size", 16, 0);
 sdb_set (kv, "nso_start.format", "xxq unused mod_memoffset padding", 0);
 sdb_num_set (kv, "nso_header.offset", 0, 0);
 sdb_num_set (kv, "nso_header.size", 0x40, 0);
 sdb_set (kv, "nso_header.format", "xxxxxxxxxxxx magic unk size unk2 text_offset text_size ro_offset ro_size data_offset data_size bss_size unk3", 0);
 sdb_ns_set (bf->sdb, "info", kv);
 return kv;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TSNode ;


 scalar_t__ strcmp (int ,char*) ;
 int ts_node_type (int ) ;

__attribute__((used)) static inline bool is_ts_tmp_seek_command(TSNode node) {
 return strcmp (ts_node_type (node), "tmp_seek_command") == 0;
}

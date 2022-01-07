
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_6__ {int qXfer_features_read; } ;
struct TYPE_7__ {TYPE_1__ stub_features; } ;
typedef TYPE_2__ libgdbr_t ;


 int free (char*) ;
 int gdbr_parse_target_xml (TYPE_2__*,char*,int ) ;
 char* gdbr_read_feature (TYPE_2__*,char*,int *) ;

int gdbr_read_target_xml(libgdbr_t *g) {
 if (!g->stub_features.qXfer_features_read) {
  return -1;
 }
 char *data;
 ut64 len;
 if (!(data = gdbr_read_feature (g, "target.xml", &len))) {
  return -1;
 }
 gdbr_parse_target_xml (g, data, len);
 free (data);
 return 0;
}

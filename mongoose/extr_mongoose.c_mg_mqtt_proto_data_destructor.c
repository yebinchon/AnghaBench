
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MG_FREE (void*) ;

__attribute__((used)) static void mg_mqtt_proto_data_destructor(void *proto_data) {
  MG_FREE(proto_data);
}

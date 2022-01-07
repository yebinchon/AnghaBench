
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int h_name; } ;
struct gethostbyname_data {int addr_name; TYPE_1__ hostent_space; } ;


 int snprintf (int ,int,char*,char*) ;

__attribute__((used)) static void gethostbyname_data_setstring(struct gethostbyname_data* data, char* name) {
 snprintf(data->addr_name, sizeof(data->addr_name), "%s", name);
 data->hostent_space.h_name = data->addr_name;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r_bin_xtr_plugin_t {int dummy; } ;
typedef int RLibPlugin ;


 int bin ;
 int r_bin_xtr_add (int ,struct r_bin_xtr_plugin_t*) ;

__attribute__((used)) static int __lib_bin_xtr_cb(RLibPlugin *pl, void *user, void *data) {
 struct r_bin_xtr_plugin_t *hand = (struct r_bin_xtr_plugin_t *)data;

 r_bin_xtr_add (bin, hand);
 return 1;
}

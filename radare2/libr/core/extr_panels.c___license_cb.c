
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int r_cons_message (char*) ;

int __license_cb(void *user) {
 r_cons_message ("Copyright 2006-2019 - pancake - LGPL");
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPIFFS_unmount (int *) ;
 int fs ;

void myspiffs_unmount() {
  SPIFFS_unmount(&fs);
}

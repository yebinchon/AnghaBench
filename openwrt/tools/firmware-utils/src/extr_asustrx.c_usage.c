
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

__attribute__((used)) static void usage() {
 printf("Usage:\n");
 printf("\t-i file\t\t\t\tinput TRX file\n");
 printf("\t-o file\t\t\t\toutput Asus TRX file\n");
 printf("\t-p productid\t\t\tproduct (device) ID\n");
 printf("\t-v version\t\t\tfirmware version formatted with 4 digits like: 1.2.3.4\n");
}

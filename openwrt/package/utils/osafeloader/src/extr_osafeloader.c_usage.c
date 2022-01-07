
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

__attribute__((used)) static void usage() {
 printf("Usage:\n");
 printf("\n");
 printf("Info about SafeLoader:\n");
 printf("\tosafeloader info <file>\n");
 printf("\n");
 printf("Extract from SafeLoader:\n");
 printf("\tosafeloader extract <file> [options]\n");
 printf("\t-p name\t\t\t\tname of partition to extract\n");
 printf("\t-o file\t\t\t\toutput file\n");
}

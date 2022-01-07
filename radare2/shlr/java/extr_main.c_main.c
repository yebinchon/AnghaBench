
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Sdb ;
typedef int RBinJavaObj ;


 int printf (char*,int *) ;
 int * r_bin_java_new (char*,int ,int *) ;
 int * sdb_new (int *,int *,int ) ;

int main() {
 Sdb *kv = sdb_new(((void*)0), ((void*)0), 0);
 RBinJavaObj *o = r_bin_java_new ("/tmp/CON.class", 0, kv);
 printf ("Hello World %p\n", o);
 return 0;
}

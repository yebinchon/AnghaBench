
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int doit (char*,char*) ;

int main(void) {
 int ret;
 ret = doit("www.example.com", ((void*)0));
 ret = doit("www.example.com", "80");
 return ret;
}

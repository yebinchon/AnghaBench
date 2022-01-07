
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {int dummy; } ;
struct gethostbyname_data {int dummy; } ;


 int printhostent (struct hostent*) ;
 struct hostent* proxy_gethostbyname (char*,struct gethostbyname_data*) ;

int main(int argc, char**argv) {
 struct hostent* ret;
 struct gethostbyname_data data;
 if(argc == 1) return 1;
 ret = proxy_gethostbyname(argv[1], &data);
 if(ret) printhostent(ret);
 return 0;
}

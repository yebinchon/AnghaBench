
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {int dummy; } ;


 struct hostent* gethostbyname (char*) ;
 int printhostent (struct hostent*) ;

int main(int argc, char**argv) {
 struct hostent* ret;
 if(argc == 1) return 1;
 ret = gethostbyname(argv[1]);
 if(ret) printhostent(ret);
 return 0;
}

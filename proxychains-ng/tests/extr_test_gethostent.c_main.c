
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {int dummy; } ;


 struct hostent* gethostent () ;
 int printhostent (struct hostent*) ;

int main(int argc, char** argv) {
 struct hostent *hp;
 while((hp = gethostent())) {
  printhostent(hp);
 }
 return 0;
}

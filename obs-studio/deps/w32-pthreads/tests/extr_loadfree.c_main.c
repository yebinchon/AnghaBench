
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HINSTANCE ;


 int FreeLibrary (int ) ;
 int LoadLibrary (char*) ;
 int Sleep (int) ;
 int assert (int) ;

int main() {
  HINSTANCE hinst;

  assert((hinst = LoadLibrary("pthread")) != (HINSTANCE) 0);

  Sleep(100);

  FreeLibrary(hinst);
  return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (scalar_t__*,char const*,size_t) ;
 scalar_t__* own_dir ;
 size_t strlen (char const*) ;

__attribute__((used)) static void set_own_dir(const char *argv0) {
 size_t l = strlen(argv0);
 while(l && argv0[l - 1] != '/')
  l--;
 if(l == 0)



  memcpy(own_dir, ".", 2);

 else {
  memcpy(own_dir, argv0, l - 1);
  own_dir[l] = 0;
 }
}

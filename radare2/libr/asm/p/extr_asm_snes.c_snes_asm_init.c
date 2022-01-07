
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snes_asm_flags {int dummy; } ;


 scalar_t__ malloc (int) ;
 int memset (scalar_t__,int ,int) ;
 scalar_t__ snesflags ;

__attribute__((used)) static bool snes_asm_init (void* user) {
 if (!snesflags) {
  snesflags = malloc (sizeof (struct snes_asm_flags));
 }
 memset(snesflags,0,sizeof (struct snes_asm_flags));
 return 0;
}

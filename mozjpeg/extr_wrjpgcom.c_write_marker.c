
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PUTBYTE (int) ;

__attribute__((used)) static void
write_marker(int marker)
{
  PUTBYTE(0xFF);
  PUTBYTE(marker);
}

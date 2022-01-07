
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PORTF ;

__attribute__((used)) static void unselect_rows(void)
{

    PORTF &= 0x0F;
}

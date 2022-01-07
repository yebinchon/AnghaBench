
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;



UCHAR kuhl_m_sr98_hid26_Manchester_4bits(UCHAR data4)
{
 UCHAR i, r;
 for(i = r = 0; i < 4; i++)
  r |= (1 << ((data4 >> i) & 1)) << (i * 2);
 return r;
}

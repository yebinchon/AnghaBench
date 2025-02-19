
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_LC1 (unsigned char const) ;
 scalar_t__ IS_LC2 (unsigned char const) ;
 scalar_t__ IS_LCPRV1 (unsigned char const) ;
 scalar_t__ IS_LCPRV2 (unsigned char const) ;

int
pg_mule_mblen(const unsigned char *s)
{
 int len;

 if (IS_LC1(*s))
  len = 2;
 else if (IS_LCPRV1(*s))
  len = 3;
 else if (IS_LC2(*s))
  len = 3;
 else if (IS_LCPRV2(*s))
  len = 4;
 else
  len = 1;
 return len;
}

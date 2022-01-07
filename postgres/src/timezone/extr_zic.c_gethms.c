
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zic_t ;


 int HOURSPERDAY ;
 int MINSPERHOUR ;
 int SECSPERHOUR ;
 int SECSPERMIN ;
 int ZIC_MAX ;
 int _ (char*) ;
 int error (char*,...) ;
 scalar_t__ noise ;
 int oadd (int,int) ;
 int sscanf (char const*,char*,int*,char*,int*,char*,int*,char*,int*,char*,char*) ;
 int warning (int ) ;

__attribute__((used)) static zic_t
gethms(char const *string, char const *errstring)
{

 int hh;
 int sign,
    mm = 0,
    ss = 0;
 char hhx,
    mmx,
    ssx,
    xr = '0',
    xs;
 int tenths = 0;
 bool ok = 1;

 if (string == ((void*)0) || *string == '\0')
  return 0;
 if (*string == '-')
 {
  sign = -1;
  ++string;
 }
 else
  sign = 1;
 switch (sscanf(string,
       "%d%c%d%c%d%c%1d%*[0]%c%*[0123456789]%c",
       &hh, &hhx, &mm, &mmx, &ss, &ssx, &tenths, &xr, &xs))
 {
  default:
   ok = 0;
   break;
  case 8:
   ok = '0' <= xr && xr <= '9';

  case 7:
   ok &= ssx == '.';
   if (ok && noise)
    warning(_("fractional seconds rejected by"
        " pre-2018 versions of zic"));

  case 5:
   ok &= mmx == ':';

  case 3:
   ok &= hhx == ':';

  case 1:
   break;
 }
 if (!ok)
 {
  error("%s", errstring);
  return 0;
 }
 if (hh < 0 ||
  mm < 0 || mm >= MINSPERHOUR ||
  ss < 0 || ss > SECSPERMIN)
 {
  error("%s", errstring);
  return 0;
 }
 ss += 5 + ((ss ^ 1) & (xr == '0')) <= tenths;
 if (noise && (hh > HOURSPERDAY ||
      (hh == HOURSPERDAY && (mm != 0 || ss != 0))))
  warning(_("values over 24 hours not handled by pre-2007 versions of zic"));
 return oadd(sign * (zic_t) hh * SECSPERHOUR,
    sign * (mm * SECSPERMIN + ss));
}

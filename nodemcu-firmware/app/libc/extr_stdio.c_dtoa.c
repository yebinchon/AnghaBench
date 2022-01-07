
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtype ;
typedef int buf ;


 int MAX_FCONVERSION ;
 int MAX_FRACT ;
 int _finite (scalar_t__) ;
 scalar_t__ _isNan (scalar_t__) ;
 int cvt (scalar_t__,int,char*,int,char*,char*) ;
 int memcpy (char*,char*,int) ;
 int strcpy (char*,char*) ;

void dtoa (char *dbuf, rtype arg, int fmtch, int width, int prec)
{
    char buf[MAX_FCONVERSION+1], *cp;
    char sign;
    int size;

    if( !_finite(arg) ) {
        if( _isNan(arg) )
            strcpy (dbuf, "NaN");
        else if( arg < 0)
            strcpy (dbuf, "-Infinity");
        else
            strcpy (dbuf, "Infinity");
        return;
    }

    if (prec == 0)
        prec = 6;
    else if (prec > MAX_FRACT)
        prec = MAX_FRACT;


    cp = buf + 1;
    *cp = '\0';
    size = cvt (arg, prec, &sign, fmtch, cp, buf + sizeof(buf));
    if (*cp == '\0')
        cp++;

    if (sign)
        *--cp = sign, size++;

    cp[size] = 0;
    memcpy (dbuf, cp, size + 1);
}

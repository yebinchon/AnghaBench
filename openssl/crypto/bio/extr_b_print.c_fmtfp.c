
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iconvert ;
typedef int fconvert ;
typedef int econvert ;
typedef double LDOUBLE ;


 int DP_F_MINUS ;
 int DP_F_NUM ;
 int DP_F_PLUS ;
 int DP_F_SPACE ;
 int DP_F_UP ;
 int DP_F_ZERO ;
 int E_FORMAT ;
 int F_FORMAT ;
 int G_FORMAT ;
 double ULONG_MAX ;
 double abs_val (double) ;
 int doapr_outch (char**,char**,size_t*,size_t*,char) ;
 double pow_10 (int) ;
 unsigned long roundv (double) ;

__attribute__((used)) static int
fmtfp(char **sbuffer,
      char **buffer,
      size_t *currlen,
      size_t *maxlen, LDOUBLE fvalue, int min, int max, int flags, int style)
{
    int signvalue = 0;
    LDOUBLE ufvalue;
    LDOUBLE tmpvalue;
    char iconvert[20];
    char fconvert[20];
    char econvert[20];
    int iplace = 0;
    int fplace = 0;
    int eplace = 0;
    int padlen = 0;
    int zpadlen = 0;
    long exp = 0;
    unsigned long intpart;
    unsigned long fracpart;
    unsigned long max10;
    int realstyle;

    if (max < 0)
        max = 6;

    if (fvalue < 0)
        signvalue = '-';
    else if (flags & DP_F_PLUS)
        signvalue = '+';
    else if (flags & DP_F_SPACE)
        signvalue = ' ';






    if (style == G_FORMAT) {
        if (fvalue == 0.0) {
            realstyle = F_FORMAT;
        } else if (fvalue < 0.0001) {
            realstyle = E_FORMAT;
        } else if ((max == 0 && fvalue >= 10)
                    || (max > 0 && fvalue >= pow_10(max))) {
            realstyle = E_FORMAT;
        } else {
            realstyle = F_FORMAT;
        }
    } else {
        realstyle = style;
    }

    if (style != F_FORMAT) {
        tmpvalue = fvalue;

        if (fvalue != 0.0) {
            while (tmpvalue < 1) {
                tmpvalue *= 10;
                exp--;
            }
            while (tmpvalue > 10) {
                tmpvalue /= 10;
                exp++;
            }
        }
        if (style == G_FORMAT) {




            if (max == 0)
                max = 1;

            if (realstyle == F_FORMAT) {
                max -= (exp + 1);
                if (max < 0) {



                    return 0;
                }
            } else {





                max--;
            }
        }
        if (realstyle == E_FORMAT)
            fvalue = tmpvalue;
    }
    ufvalue = abs_val(fvalue);
    if (ufvalue > ULONG_MAX) {

        return 0;
    }
    intpart = (unsigned long)ufvalue;





    if (max > 9)
        max = 9;





    max10 = roundv(pow_10(max));
    fracpart = roundv(pow_10(max) * (ufvalue - intpart));

    if (fracpart >= max10) {
        intpart++;
        fracpart -= max10;
    }


    do {
        iconvert[iplace++] = "0123456789"[intpart % 10];
        intpart = (intpart / 10);
    } while (intpart && (iplace < (int)sizeof(iconvert)));
    if (iplace == sizeof(iconvert))
        iplace--;
    iconvert[iplace] = 0;


    while (fplace < max) {
        if (style == G_FORMAT && fplace == 0 && (fracpart % 10) == 0) {

            max--;
            fracpart = fracpart / 10;
            if (fplace < max)
                continue;
            break;
        }
        fconvert[fplace++] = "0123456789"[fracpart % 10];
        fracpart = (fracpart / 10);
    }

    if (fplace == sizeof(fconvert))
        fplace--;
    fconvert[fplace] = 0;


    if (realstyle == E_FORMAT) {
        int tmpexp;
        if (exp < 0)
            tmpexp = -exp;
        else
            tmpexp = exp;

        do {
            econvert[eplace++] = "0123456789"[tmpexp % 10];
            tmpexp = (tmpexp / 10);
        } while (tmpexp > 0 && eplace < (int)sizeof(econvert));

        if (tmpexp > 0)
            return 0;

        if (eplace == 1)
            econvert[eplace++] = '0';
    }





    padlen = min - iplace - max - (max > 0 ? 1 : 0) - ((signvalue) ? 1 : 0);

    if (realstyle == E_FORMAT)
        padlen -= 2 + eplace;
    zpadlen = max - fplace;
    if (zpadlen < 0)
        zpadlen = 0;
    if (padlen < 0)
        padlen = 0;
    if (flags & DP_F_MINUS)
        padlen = -padlen;

    if ((flags & DP_F_ZERO) && (padlen > 0)) {
        if (signvalue) {
            if (!doapr_outch(sbuffer, buffer, currlen, maxlen, signvalue))
                return 0;
            --padlen;
            signvalue = 0;
        }
        while (padlen > 0) {
            if (!doapr_outch(sbuffer, buffer, currlen, maxlen, '0'))
                return 0;
            --padlen;
        }
    }
    while (padlen > 0) {
        if (!doapr_outch(sbuffer, buffer, currlen, maxlen, ' '))
            return 0;
        --padlen;
    }
    if (signvalue && !doapr_outch(sbuffer, buffer, currlen, maxlen, signvalue))
        return 0;

    while (iplace > 0) {
        if (!doapr_outch(sbuffer, buffer, currlen, maxlen, iconvert[--iplace]))
            return 0;
    }





    if (max > 0 || (flags & DP_F_NUM)) {
        if (!doapr_outch(sbuffer, buffer, currlen, maxlen, '.'))
            return 0;

        while (fplace > 0) {
            if (!doapr_outch(sbuffer, buffer, currlen, maxlen,
                             fconvert[--fplace]))
                return 0;
        }
    }
    while (zpadlen > 0) {
        if (!doapr_outch(sbuffer, buffer, currlen, maxlen, '0'))
            return 0;
        --zpadlen;
    }
    if (realstyle == E_FORMAT) {
        char ech;

        if ((flags & DP_F_UP) == 0)
            ech = 'e';
        else
            ech = 'E';
        if (!doapr_outch(sbuffer, buffer, currlen, maxlen, ech))
                return 0;
        if (exp < 0) {
            if (!doapr_outch(sbuffer, buffer, currlen, maxlen, '-'))
                    return 0;
        } else {
            if (!doapr_outch(sbuffer, buffer, currlen, maxlen, '+'))
                    return 0;
        }
        while (eplace > 0) {
            if (!doapr_outch(sbuffer, buffer, currlen, maxlen,
                             econvert[--eplace]))
                return 0;
        }
    }

    while (padlen < 0) {
        if (!doapr_outch(sbuffer, buffer, currlen, maxlen, ' '))
            return 0;
        ++padlen;
    }
    return 1;
}

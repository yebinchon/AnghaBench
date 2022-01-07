
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double rtype ;


 int ALTERNATE_FORM ;
 int TESTFLAG (int ) ;
 char* c_round (double,int*,char*,char*,char,char*) ;
 char* exponent (char*,int,int) ;
 double modf (double,double*) ;
 void* to_char (int) ;

__attribute__((used)) static int
cvt(rtype number, int prec, char *signp, int fmtch, char *startp, char *endp)
{
    register char *p, *t;
    register double fract;
    double integer, tmp;
    int dotrim, expcnt, gformat;

    dotrim = expcnt = gformat = 0;
    if (number < 0) {
        number = -number;
        *signp = '-';
    } else
        *signp = 0;

    fract = modf(number, &integer);


    t = ++startp;





    for (p = endp - 1; integer; ++expcnt) {
        tmp = modf(integer / 10, &integer);
        *p-- = to_char((int)((tmp + .01) * 10));
    }
    switch (fmtch) {
    case 'f':

        if (expcnt)
            for (; ++p < endp; *t++ = *p);
        else
            *t++ = '0';




        if (prec || TESTFLAG(ALTERNATE_FORM))
            *t++ = '.';

        if (fract) {
            if (prec)
                do {
                    fract = modf(fract * 10, &tmp);
                    *t++ = to_char((int)tmp);
                } while (--prec && fract);
            if (fract)
                startp = c_round(fract, (int *)((void*)0), startp,
                    t - 1, (char)0, signp);
        }
        for (; prec--; *t++ = '0');
        break;
    case 'e':
    case 'E':
eformat: if (expcnt) {
            *t++ = *++p;
            if (prec || TESTFLAG(ALTERNATE_FORM))
                *t++ = '.';

            for (; prec && ++p < endp; --prec)
                *t++ = *p;





            if (!prec && ++p < endp) {
                fract = 0;
                startp = c_round((double)0, &expcnt, startp,
                    t - 1, *p, signp);
            }

            --expcnt;
        }

        else if (fract) {

            for (expcnt = -1;; --expcnt) {
                fract = modf(fract * 10, &tmp);
                if (tmp)
                    break;
            }
            *t++ = to_char((int)tmp);
            if (prec || TESTFLAG(ALTERNATE_FORM))
                *t++ = '.';
        }
        else {
            *t++ = '0';
            if (prec || TESTFLAG(ALTERNATE_FORM))
                *t++ = '.';
        }

        if (fract) {
            if (prec)
                do {
                    fract = modf(fract * 10, &tmp);
                    *t++ = to_char((int)tmp);
                } while (--prec && fract);
            if (fract)
                startp = c_round(fract, &expcnt, startp,
                    t - 1, (char)0, signp);
        }

        for (; prec--; *t++ = '0');


        if (gformat && !TESTFLAG(ALTERNATE_FORM)) {
            while (t > startp && *--t == '0');
            if (*t == '.')
                --t;
            ++t;
        }
        t = exponent(t, expcnt, fmtch);
        break;
    case 'g':
    case 'G':

        if (!prec)
            ++prec;






        if (expcnt > prec || (!expcnt && fract && fract < .0001)) {







            --prec;
            fmtch -= 2;
            gformat = 1;
            goto eformat;
        }




        if (expcnt)
            for (; ++p < endp; *t++ = *p, --prec);
        else
            *t++ = '0';




        if (prec || TESTFLAG(ALTERNATE_FORM)) {
            dotrim = 1;
            *t++ = '.';
        }
        else
            dotrim = 0;

        if (fract) {
            if (prec) {
                    do {
                    fract = modf(fract * 10, &tmp);
                    *t++ = to_char((int)tmp);
                } while(!tmp && !expcnt);
                while (--prec && fract) {
                    fract = modf(fract * 10, &tmp);
                    *t++ = to_char((int)tmp);
                }
            }
            if (fract)
                startp = c_round(fract, (int *)((void*)0), startp,
                    t - 1, (char)0, signp);
        }

        if (TESTFLAG(ALTERNATE_FORM))
            for (; prec--; *t++ = '0');
        else if (dotrim) {
            while (t > startp && *--t == '0');
            if (*t != '.')
                ++t;
        }
    }
    return (t - startp);
}

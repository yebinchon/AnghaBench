#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char WCHAR ;
typedef  int ULONGLONG ;

/* Variables and functions */
 int NUMBER_DTOA_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (double) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 double FUNC4 (int,int) ; 

__attribute__((used)) static inline void FUNC5(double d, WCHAR *buf, int size, int *dec_point)
{
    ULONGLONG l;
    int i;

    /* TODO: this function should print doubles with bigger precision */
    FUNC0(size>=2 && size<=NUMBER_DTOA_SIZE && d>=0);

    if(d == 0)
        *dec_point = 0;
    else
        *dec_point = FUNC1(FUNC2(d));
    l = d*FUNC4(10, size-*dec_point-1);

    if(l%10 >= 5)
        l = l/10+1;
    else
        l /= 10;

    buf[size-1] = 0;
    for(i=size-2; i>=0; i--) {
        buf[i] = '0'+l%10;
        l /= 10;
    }

    /* log10 was wrong by 1 or rounding changed number of digits */
    if(l) {
        (*dec_point)++;
        FUNC3(buf+1, buf, size-2);
        buf[0] = '0'+l;
    }else if(buf[0]=='0' && buf[1]>='1' && buf[1]<='9') {
        (*dec_point)--;
        FUNC3(buf, buf+1, size-2);
        buf[size-2] = '0';
    }
}
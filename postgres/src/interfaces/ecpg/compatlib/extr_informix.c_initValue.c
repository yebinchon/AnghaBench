
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long val; char sign; int maxdigits; int digits; int remaining; char* val_string; } ;


 int LONG_MAX ;
 int log10 (int) ;
 scalar_t__ malloc (int) ;
 TYPE_1__ value ;

__attribute__((used)) static int
initValue(long lng_val)
{
 int i,
    j;
 long l,
    dig;


 value.val = lng_val >= 0 ? lng_val : lng_val * (-1);
 value.sign = lng_val >= 0 ? '+' : '-';
 value.maxdigits = log10(2) * (8 * sizeof(long) - 1);


 i = 0;
 l = 1;
 do
 {
  i++;
  l *= 10;
 }
 while ((l - 1) < value.val && l <= LONG_MAX / 10);

 if (l <= LONG_MAX / 10)
 {
  value.digits = i;
  l /= 10;
 }
 else
  value.digits = i + 1;

 value.remaining = value.digits;


 if ((value.val_string = (char *) malloc(value.digits + 1)) == ((void*)0))
  return -1;
 dig = value.val;
 for (i = value.digits, j = 0; i > 0; i--, j++)
 {
  value.val_string[j] = dig / l + '0';
  dig = dig % l;
  l /= 10;
 }
 value.val_string[value.digits] = '\0';
 return 0;
}

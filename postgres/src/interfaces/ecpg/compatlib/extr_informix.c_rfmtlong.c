
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int digits; char sign; char* val_string; } ;


 int ENOMEM ;
 int errno ;
 int free (char*) ;
 int getRightMostDot (char const*) ;
 int initValue (long) ;
 scalar_t__ malloc (size_t) ;
 int strcat (char*,char*) ;
 scalar_t__ strchr (char const*,int) ;
 size_t strlen (char const*) ;
 TYPE_1__ value ;

int
rfmtlong(long lng_val, const char *fmt, char *outbuf)
{
 size_t fmt_len = strlen(fmt);
 size_t temp_len;
 int i,
    j,
    k,
    dotpos;
 int leftalign = 0,
    blank = 0,
    sign = 0,
    entitydone = 0,
    signdone = 0,
    brackets_ok = 0;
 char *temp;
 char tmp[2] = " ";
 char lastfmt = ' ',
    fmtchar = ' ';

 temp = (char *) malloc(fmt_len + 1);
 if (!temp)
 {
  errno = ENOMEM;
  return -1;
 }


 if (initValue(lng_val) == -1)
 {
  free(temp);
  errno = ENOMEM;
  return -1;
 }


 if (strchr(fmt, (int) '<'))
  leftalign = 1;


 if (strchr(fmt, (int) '(') && strchr(fmt, (int) ')'))
  brackets_ok = 1;



 dotpos = getRightMostDot(fmt);


 temp[0] = '\0';
 k = value.digits - 1;
 for (i = fmt_len - 1, j = 0; i >= 0; i--, j++)
 {

  if (k < 0)
  {
   blank = 1;
   if (k == -1)
    sign = 1;
   if (leftalign)
   {

    if (sign)
     if (signdone)
     {
      temp[j] = '\0';
      break;
     }
   }
  }

  if (dotpos >= 0 && dotpos <= i)
  {
   if (dotpos < i)
   {
    if (fmt[i] == ')')
     tmp[0] = value.sign == '-' ? ')' : ' ';
    else
     tmp[0] = '0';
   }
   else
    tmp[0] = '.';
   strcat(temp, tmp);
   continue;
  }

  if (blank && fmt[i] == ',')
   fmtchar = lastfmt;
  else
   fmtchar = fmt[i];

  if (k < 0 && leftalign && sign && !signdone && fmtchar != '+' && fmtchar != '-')
   continue;

  switch (fmtchar)
  {
   case ',':
    tmp[0] = ',';
    k++;
    break;
   case '*':
    if (blank)
     tmp[0] = '*';
    else
     tmp[0] = value.val_string[k];
    break;
   case '&':
    if (blank)
     tmp[0] = '0';
    else
     tmp[0] = value.val_string[k];
    break;
   case '#':
    if (blank)
     tmp[0] = ' ';
    else
     tmp[0] = value.val_string[k];
    break;
   case '-':
    if (sign && value.sign == '-' && !signdone)
    {
     tmp[0] = '-';
     signdone = 1;
    }
    else if (blank)
     tmp[0] = ' ';
    else
     tmp[0] = value.val_string[k];
    break;
   case '+':
    if (sign && !signdone)
    {
     tmp[0] = value.sign;
     signdone = 1;
    }
    else if (blank)
     tmp[0] = ' ';
    else
     tmp[0] = value.val_string[k];
    break;
   case '(':
    if (sign && brackets_ok && value.sign == '-')
     tmp[0] = '(';
    else if (blank)
     tmp[0] = ' ';
    else
     tmp[0] = value.val_string[k];
    break;
   case ')':
    if (brackets_ok && value.sign == '-')
     tmp[0] = ')';
    else
     tmp[0] = ' ';
    break;
   case '$':
    if (blank && !entitydone)
    {
     tmp[0] = '$';
     entitydone = 1;
    }
    else if (blank)
     tmp[0] = ' ';
    else
     tmp[0] = value.val_string[k];
    break;
   case '<':
    tmp[0] = value.val_string[k];
    break;
   default:
    tmp[0] = fmt[i];
  }
  strcat(temp, tmp);
  lastfmt = fmt[i];
  k--;
 }

 temp[fmt_len] = '\0';


 temp_len = strlen(temp);
 outbuf[0] = '\0';
 for (i = temp_len - 1; i >= 0; i--)
 {
  tmp[0] = temp[i];
  strcat(outbuf, tmp);
 }
 outbuf[temp_len] = '\0';


 free(temp);
 free(value.val_string);

 return 0;
}

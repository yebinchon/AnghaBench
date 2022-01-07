
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;


 int ARRAY_SIZE (char*) ;
 int EM_GETSEL ;
 int EM_SETSEL ;
 int GetWindowTextA (int ,char*,int ) ;
 long SendMessageA (int ,int ,int ,long) ;
 int SetWindowTextA (int ,char*) ;
 int atoi (char*) ;
 int sprintf (char*,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static int CC_CheckDigitsInEdit( HWND hwnd, int maxval )
{
 int i, k, m, result, value;
 long editpos;
 char buffer[30];

 GetWindowTextA(hwnd, buffer, ARRAY_SIZE(buffer));
 m = strlen(buffer);
 result = 0;

 for (i = 0 ; i < m ; i++)
  if (buffer[i] < '0' || buffer[i] > '9')
  {
   for (k = i + 1; k <= m; k++)
   {
    buffer[i] = buffer[k];
    m--;
   }
   buffer[m] = 0;
   result = 1;
  }

 value = atoi(buffer);
 if (value > maxval)
 {
  sprintf(buffer, "%d", maxval);
  result = 2;
 }
 if (result)
 {
  editpos = SendMessageA(hwnd, EM_GETSEL, 0, 0);
  SetWindowTextA(hwnd, buffer );
  SendMessageA(hwnd, EM_SETSEL, 0, editpos);
 }
 return value;
}

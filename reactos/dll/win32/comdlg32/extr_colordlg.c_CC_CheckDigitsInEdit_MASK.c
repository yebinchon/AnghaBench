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
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  EM_GETSEL ; 
 int /*<<< orphan*/  EM_SETSEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 long FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7( HWND hwnd, int maxval )
{
 int i, k, m, result, value;
 long editpos;
 char buffer[30];

 FUNC1(hwnd, buffer, FUNC0(buffer));
 m = FUNC6(buffer);
 result = 0;

 for (i = 0 ; i < m ; i++)
  if (buffer[i] < '0' || buffer[i] > '9')
  {
   for (k = i + 1; k <= m; k++)  /* delete bad character */
   {
    buffer[i] = buffer[k];
    m--;
   }
   buffer[m] = 0;
   result = 1;
  }

 value = FUNC4(buffer);
 if (value > maxval)       /* build a new string */
 {
  FUNC5(buffer, "%d", maxval);
  result = 2;
 }
 if (result)
 {
  editpos = FUNC2(hwnd, EM_GETSEL, 0, 0);
  FUNC3(hwnd, buffer );
  FUNC2(hwnd, EM_SETSEL, 0, editpos);
 }
 return value;
}
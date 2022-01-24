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
typedef  int /*<<< orphan*/  tmp ;

/* Variables and functions */
 int /*<<< orphan*/  ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 size_t FUNC3 (char*) ; 

__attribute__((used)) static char *FUNC4 (const unsigned char *src, char *dst, size_t size)
{
  size_t len;
  char tmp[sizeof "255.255.255.255"];

  tmp[0] = '\0';
  (void)FUNC1(tmp, sizeof(tmp), "%d.%d.%d.%d",
          ((int)((unsigned char)src[3])) & 0xff,
          ((int)((unsigned char)src[2])) & 0xff,
          ((int)((unsigned char)src[1])) & 0xff,
          ((int)((unsigned char)src[0])) & 0xff);

  len = FUNC3(tmp);
  if(len == 0 || len >= size)
  {
    FUNC0(ENOSPC);
    return (NULL);
  }
  FUNC2(dst, tmp);
  return dst;
}
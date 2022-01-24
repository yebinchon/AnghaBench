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

/* Variables and functions */
 int TJCS_CMYK ; 
 int TJCS_YCCK ; 
 int TJCS_YCbCr ; 
 char** csName ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*,char*) ; 
 char** subNameLong ; 

char *FUNC1(int subsamp, int cs, char *buf)
{
  if (cs == TJCS_YCbCr)
    return (char *)subNameLong[subsamp];
  else if (cs == TJCS_YCCK || cs == TJCS_CMYK) {
    FUNC0(buf, 80, "%s %s", csName[cs], subNameLong[subsamp]);
    return buf;
  } else
    return (char *)csName[cs];
}
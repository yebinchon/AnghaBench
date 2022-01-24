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
 scalar_t__ FUNC0 (char const*) ; 
 int FUNC1 (char const*,char const*) ; 

const char *FUNC2(const char *zFilename, const char *zParam){
  if( zFilename==0 || zParam==0 ) return 0;
  zFilename += FUNC0(zFilename) + 1;
  while( zFilename[0] ){
    int x = FUNC1(zFilename, zParam);
    zFilename += FUNC0(zFilename) + 1;
    if( x==0 ) return zFilename;
    zFilename += FUNC0(zFilename) + 1;
  }
  return 0;
}
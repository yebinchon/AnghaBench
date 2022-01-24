#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* errStr; scalar_t__ isInstanceError; } ;
typedef  TYPE_1__ tjinstance ;
typedef  scalar_t__ tjhandle ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 char* errStr ; 

char *FUNC0(tjhandle handle)
{
  tjinstance *this = (tjinstance *)handle;

  if (this && this->isInstanceError) {
    this->isInstanceError = FALSE;
    return this->errStr;
  } else
    return errStr;
}
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
 unsigned long FUNC0 (scalar_t__) ; 
 unsigned long MCSPI_CH0CONF_WL_M ; 
 scalar_t__ MCSPI_O_CH0CONF ; 
 long FUNC1 (unsigned long,unsigned short*,unsigned short*,unsigned long,unsigned long) ; 
 long FUNC2 (unsigned long,unsigned long*,unsigned long*,unsigned long,unsigned long) ; 
 long FUNC3 (unsigned long,unsigned char*,unsigned char*,unsigned long,unsigned long) ; 
 unsigned long SPI_WL_16 ; 
 unsigned long SPI_WL_32 ; 
 unsigned long SPI_WL_8 ; 

long FUNC4(unsigned long ulBase, unsigned char *ucDout,
                   unsigned char *ucDin, unsigned long ulCount,
                   unsigned long ulFlags)
{
  unsigned long ulWordLength;
  long lRet;

  //
  // Get the word length
  //
  ulWordLength = (FUNC0(ulBase + MCSPI_O_CH0CONF) & MCSPI_CH0CONF_WL_M);

  //
  // Check for word length.
  //
  if( !((ulWordLength == SPI_WL_8) || (ulWordLength == SPI_WL_16) ||
     (ulWordLength == SPI_WL_32)) )
  {
    return -1;
  }

  if( ulWordLength == SPI_WL_8 )
  {
    //
    // Do byte transfer
    //
    lRet = FUNC3(ulBase,ucDout,ucDin,ulCount,ulFlags);
  }
  else if( ulWordLength == SPI_WL_16 )
  {

    //
    // Do half-word transfer
    //
    lRet = FUNC1(ulBase,(unsigned short *)ucDout,
                  (unsigned short *)ucDin,ulCount,ulFlags);
  }
  else
  {
    //
    // Do word transfer
    //
    lRet = FUNC2(ulBase,(unsigned long *)ucDout,
                  (unsigned long *)ucDin,ulCount,ulFlags);
  }

  //
  // return
  //
  return lRet;

}
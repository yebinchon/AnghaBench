
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int overwrite; int streamChecksum; int blockIndependence; int sparseFileSupport; scalar_t__ removeSrcFile; int * dictionaryFilename; scalar_t__ favorDecSpeed; scalar_t__ useDictionary; scalar_t__ contentSizeFlag; scalar_t__ blockChecksum; scalar_t__ blockSize; int blockSizeId; scalar_t__ testMode; scalar_t__ passThrough; } ;
typedef TYPE_1__ LZ4IO_prefs_t ;


 int EXM_THROW (int,char*) ;
 int LZ4IO_BLOCKSIZEID_DEFAULT ;
 scalar_t__ malloc (int) ;

LZ4IO_prefs_t* LZ4IO_defaultPreferences(void)
{
  LZ4IO_prefs_t* const ret = (LZ4IO_prefs_t*)malloc(sizeof(LZ4IO_prefs_t));
  if (!ret) EXM_THROW(21, "Allocation error : not enough memory");
  ret->passThrough = 0;
  ret->overwrite = 1;
  ret->testMode = 0;
  ret->blockSizeId = LZ4IO_BLOCKSIZEID_DEFAULT;
  ret->blockSize = 0;
  ret->blockChecksum = 0;
  ret->streamChecksum = 1;
  ret->blockIndependence = 1;
  ret->sparseFileSupport = 1;
  ret->contentSizeFlag = 0;
  ret->useDictionary = 0;
  ret->favorDecSpeed = 0;
  ret->dictionaryFilename = ((void*)0);
  ret->removeSrcFile = 0;
  return ret;
}

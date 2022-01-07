
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int operationMode_e ;


 char const* LZ4_EXTENSION ;
 int om_compress ;
 int om_decompress ;
 int strcmp (char const*,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static operationMode_e determineOpMode(const char* inputFilename)
{
    size_t const inSize = strlen(inputFilename);
    size_t const extSize = strlen(LZ4_EXTENSION);
    size_t const extStart= (inSize > extSize) ? inSize-extSize : 0;
    if (!strcmp(inputFilename+extStart, LZ4_EXTENSION)) return om_decompress;
    else return om_compress;
}

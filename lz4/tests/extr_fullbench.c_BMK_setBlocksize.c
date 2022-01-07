
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISPLAY (char*,int) ;
 int g_chunkSize ;

__attribute__((used)) static void BMK_setBlocksize(int bsize)
{
    g_chunkSize = bsize;
    DISPLAY("-Using Block Size of %i KB-\n", g_chunkSize>>10);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ off_t ;
struct TYPE_3__ {int curFile; scalar_t__ pos; scalar_t__ curOffset; } ;
typedef TYPE_1__ BufFile ;



void
BufFileTell(BufFile *file, int *fileno, off_t *offset)
{
 *fileno = file->curFile;
 *offset = file->curOffset + file->pos;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lu_byte ;
struct TYPE_6__ {int breaklist; struct TYPE_6__* previous; scalar_t__ upval; int nactvar; int isbreakable; } ;
struct TYPE_5__ {TYPE_2__* bl; int nactvar; } ;
typedef TYPE_1__ FuncState ;
typedef TYPE_2__ BlockCnt ;



__attribute__((used)) static void enterblock(FuncState*fs,BlockCnt*bl,lu_byte isbreakable){
bl->breaklist=(-1);
bl->isbreakable=isbreakable;
bl->nactvar=fs->nactvar;
bl->upval=0;
bl->previous=fs->bl;
fs->bl=bl;
}

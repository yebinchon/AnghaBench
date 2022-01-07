
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_7__ {TYPE_2__* root; } ;
struct TYPE_5__ {char* (* cmdstrf ) (void*,char*,int const*) ;void* core; } ;
struct TYPE_6__ {TYPE_1__ cob; } ;
typedef TYPE_3__ RFSFile ;


 int free (char*) ;
 char* stub1 (void*,char*,int const*) ;

__attribute__((used)) static bool __seek_write(RFSFile *file, ut64 addr, const ut8 *data, int len) {
 void *core = file->root->cob.core;
 char *res = file->root->cob.cmdstrf (core, "s %s", data);
 free (res);
 return 1;
}

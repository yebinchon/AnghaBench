
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_7__ {char* name; TYPE_2__* root; scalar_t__ path; } ;
struct TYPE_5__ {char* (* cmdstrf ) (void*,char*,char*,char const*,int const*) ;void* core; } ;
struct TYPE_6__ {TYPE_1__ cob; } ;
typedef TYPE_3__ RFSFile ;


 int free (char*) ;
 char* strdup (scalar_t__) ;
 scalar_t__ strlen (char*) ;
 char* stub1 (void*,char*,char*,char const*,int const*) ;

__attribute__((used)) static bool __cfg_write(RFSFile *file, ut64 addr, const ut8 *data, int len) {
 const char *a = file->name;
 void *core = file->root->cob.core;
 char *prefix = strdup (file->path + strlen ("/cfg/"));
 char *res = file->root->cob.cmdstrf (core, "e %s.%s=%s", prefix, a, data);
 free (prefix);
 free (res);
 return 1;
}

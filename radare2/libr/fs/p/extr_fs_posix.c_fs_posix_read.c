
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_3__ {int name; void* data; } ;
typedef TYPE_1__ RFSFile ;


 int free (void*) ;
 scalar_t__ r_file_slurp_range (int ,int ,int,int *) ;

__attribute__((used)) static bool fs_posix_read(RFSFile *file, ut64 addr, int len) {
 free (file->data);
 file->data = (void*)r_file_slurp_range (file->name, 0, len, ((void*)0));
 return 0;
}

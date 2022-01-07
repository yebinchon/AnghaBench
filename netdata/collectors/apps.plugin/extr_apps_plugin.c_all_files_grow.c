
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct file_descriptor {int dummy; } ;
struct TYPE_7__ {int * root; } ;
struct TYPE_6__ {int magic; int pos; int * name; scalar_t__ count; } ;


 int FILE_DESCRIPTORS_INCREASE_STEP ;
 TYPE_1__* all_files ;
 TYPE_4__ all_files_index ;
 int all_files_len ;
 int all_files_size ;
 int debug_log (char*,...) ;
 int error (char*) ;
 void* file_descriptor_add (TYPE_1__*) ;
 TYPE_1__* reallocz (TYPE_1__*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void all_files_grow() {
    void *old = all_files;
    int i;


    debug_log("extending fd array to %d entries", all_files_size + FILE_DESCRIPTORS_INCREASE_STEP);

    all_files = reallocz(all_files, (all_files_size + FILE_DESCRIPTORS_INCREASE_STEP) * sizeof(struct file_descriptor));




    if(unlikely(old && old != (void *)all_files)) {
        debug_log("  >> re-indexing.");

        all_files_index.root = ((void*)0);
        for(i = 0; i < all_files_size; i++) {
            if(!all_files[i].count) continue;
            if(unlikely(file_descriptor_add(&all_files[i]) != (void *)&all_files[i]))
                error("INTERNAL ERROR: duplicate indexing of fd during realloc.");
        }

        debug_log("  >> re-indexing done.");
    }



    for(i = all_files_size; i < (all_files_size + FILE_DESCRIPTORS_INCREASE_STEP); i++) {
        all_files[i].count = 0;
        all_files[i].name = ((void*)0);



        all_files[i].pos = i;
    }

    if(unlikely(!all_files_size)) all_files_len = 1;
    all_files_size += FILE_DESCRIPTORS_INCREASE_STEP;
}

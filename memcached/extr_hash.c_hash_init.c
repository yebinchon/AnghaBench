
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum hashfunc_type { ____Placeholder_hashfunc_type } hashfunc_type ;
struct TYPE_2__ {char* hash_algorithm; } ;




 int MurmurHash3_x86_32 ;
 int hash ;
 int jenkins_hash ;
 TYPE_1__ settings ;

int hash_init(enum hashfunc_type type) {
    switch(type) {
        case 129:
            hash = jenkins_hash;
            settings.hash_algorithm = "jenkins";
            break;
        case 128:
            hash = MurmurHash3_x86_32;
            settings.hash_algorithm = "murmur3";
            break;
        default:
            return -1;
    }
    return 0;
}

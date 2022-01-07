
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keypairs_t {int keypairs_nb; void* keypairs; } ;


 void* malloc (int) ;
 int os_memset (struct keypairs_t*,int ,int) ;

__attribute__((used)) static struct keypairs_t * enduser_setup_alloc_keypairs(int kp_number ){
    struct keypairs_t *kp = malloc(sizeof(struct keypairs_t));
    os_memset(kp, 0, sizeof(struct keypairs_t));

    kp->keypairs = malloc(kp_number * 2 * sizeof(char *));
    kp->keypairs_nb = kp_number;
    return kp;
}

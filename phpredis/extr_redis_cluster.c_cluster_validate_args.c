
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HashTable ;


 int CLUSTER_THROW_EXCEPTION (char*,int ) ;
 int FAILURE ;
 double INT_MAX ;
 int SUCCESS ;
 scalar_t__ zend_hash_num_elements (int *) ;

__attribute__((used)) static int
cluster_validate_args(double timeout, double read_timeout, HashTable *seeds) {
    if (timeout < 0L || timeout > INT_MAX) {
        CLUSTER_THROW_EXCEPTION("Invalid timeout", 0);
        return FAILURE;
    }
    if (read_timeout < 0L || read_timeout > INT_MAX) {
        CLUSTER_THROW_EXCEPTION("Invalid read timeout", 0);
        return FAILURE;
    }

    if (zend_hash_num_elements(seeds) == 0) {
        CLUSTER_THROW_EXCEPTION("Must pass seeds", 0);
        return FAILURE;
    }

    return SUCCESS;
}

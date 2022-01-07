
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_output_globals ;


 int memset (int *,int ,int) ;

__attribute__((used)) static inline void php_output_init_globals(zend_output_globals *G)
{
 memset(G, 0, sizeof(*G));
}

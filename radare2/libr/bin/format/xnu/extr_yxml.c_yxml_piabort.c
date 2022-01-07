
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yxml_t ;
typedef int yxml_ret_t ;


 int YXML_OK ;
 int yxml_popstack (int *) ;

__attribute__((used)) static inline yxml_ret_t yxml_piabort (yxml_t *x, unsigned ch) { yxml_popstack(x); return YXML_OK; }

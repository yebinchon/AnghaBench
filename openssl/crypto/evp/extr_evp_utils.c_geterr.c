
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVP_R_CANNOT_GET_PARAMETERS ;
 int EVPerr (int ,int ) ;

__attribute__((used)) static void geterr(void)
{
    EVPerr(0, EVP_R_CANNOT_GET_PARAMETERS);
}

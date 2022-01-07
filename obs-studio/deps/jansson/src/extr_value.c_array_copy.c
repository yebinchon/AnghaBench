
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int memcpy (int **,int **,size_t) ;

__attribute__((used)) static void array_copy(json_t **dest, size_t dpos,
                       json_t **src, size_t spos,
                       size_t count)
{
    memcpy(&dest[dpos], &src[spos], count * sizeof(json_t *));
}

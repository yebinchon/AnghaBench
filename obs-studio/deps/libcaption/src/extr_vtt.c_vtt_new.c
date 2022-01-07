
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vtt_t ;


 int * malloc (int) ;
 int memset (int *,int ,int) ;

vtt_t* vtt_new()
{
    vtt_t* vtt = malloc(sizeof(vtt_t));
    memset(vtt, 0, sizeof(vtt_t));
    return vtt;
}

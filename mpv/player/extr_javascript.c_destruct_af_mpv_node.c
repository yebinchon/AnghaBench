
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpv_node ;


 int mpv_free_node_contents (int *) ;

__attribute__((used)) static void destruct_af_mpv_node(void *p)
{
    mpv_free_node_contents((mpv_node*)p);
}

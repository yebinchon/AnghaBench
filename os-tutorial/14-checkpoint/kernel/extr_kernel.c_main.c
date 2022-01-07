
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void main() {
    char* video_memory = (char*) 0xb8000;
    *video_memory = 'X';
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int number_of_voices ;
 int voice ;

void voice_deiterate() { voice = (voice - 1 + number_of_voices) % number_of_voices; }

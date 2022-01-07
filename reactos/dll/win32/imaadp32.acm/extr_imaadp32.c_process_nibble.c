
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* IMA_IndexTable ;
 unsigned int* IMA_StepTable ;
 int clamp_sample (int*) ;
 int clamp_step_index (int*) ;

__attribute__((used)) static inline void process_nibble(unsigned char code, int* stepIndex, int* sample)
{
    unsigned step;
    int diff;

    code &= 0x0F;

    step = IMA_StepTable[*stepIndex];
    diff = step >> 3;
    if (code & 1) diff += step >> 2;
    if (code & 2) diff += step >> 1;
    if (code & 4) diff += step;
    if (code & 8) *sample -= diff;
    else *sample += diff;
    clamp_sample(sample);
    *stepIndex += IMA_IndexTable[code];
    clamp_step_index(stepIndex);
}

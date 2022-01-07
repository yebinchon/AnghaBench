
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_MAX ;
 int INT_MIN ;

__attribute__((used)) static int wrap(int val, int delta, int minVal, int maxVal)
{
    val += delta;
    if (delta == INT_MIN || val < minVal) return maxVal;
    if (delta == INT_MAX || val > maxVal) return minVal;
    return val;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool is_newline_pair(char ch1, char ch2)
{
 return (ch1 == '\r' && ch2 == '\n') || (ch1 == '\n' && ch2 == '\r');
}

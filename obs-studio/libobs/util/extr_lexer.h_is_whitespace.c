
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool is_whitespace(char ch)
{
 return ch == ' ' || ch == '\r' || ch == '\t' || ch == '\n';
}

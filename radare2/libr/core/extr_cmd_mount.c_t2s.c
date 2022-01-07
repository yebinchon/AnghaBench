
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *t2s(const char ch) {
 switch (ch) {
 case 'f': return "file";
 case 'd': return "directory";
 case 'm': return "mountpoint";
 }
 return "unknown";
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *gethtmlcolor(const char ptrch, const char *def) {
 switch (ptrch) {
 case '0': return "#000";
 case '1': return "#f00";
 case '2': return "#0f0";
 case '3': return "#ff0";
 case '4': return "#00f";
 case '5': return "#f0f";
 case '6': return "#aaf";
 case '7': return "#fff";
 case '8': return "#777";
 case '9': break;
 }
 return def;
}
